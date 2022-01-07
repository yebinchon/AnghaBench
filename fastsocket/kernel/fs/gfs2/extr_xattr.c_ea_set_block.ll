; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32, i32 }
%struct.gfs2_ea_request = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64, i64 }

@GFS2_DIF_EA_INDIRECT = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@GFS2_METATYPE_IN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFS2_FORMAT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)* @ea_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_block(%struct.gfs2_inode* %0, %struct.gfs2_ea_request* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_ea_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_ea_request* %1, %struct.gfs2_ea_request** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 1
  %19 = call %struct.gfs2_sbd* @GFS2_SB(i32* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %8, align 8
  store i32 4, i32* %13, align 4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFS2_DIF_EA_INDIRECT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %3
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DIO_WAIT, align 4
  %34 = call i32 @gfs2_meta_read(i32 %29, i32 %32, i32 %33, %struct.buffer_head** %9)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %176

39:                                               ; preds = %26
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = load i32, i32* @GFS2_METATYPE_IN, align 4
  %43 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %40, %struct.buffer_head* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %172

48:                                               ; preds = %39
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = inttoptr i64 %54 to i64*
  store i64* %55, i64** %11, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %58 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  store i64* %61, i64** %14, align 8
  br label %62

62:                                               ; preds = %72, %48
  %63 = load i64*, i64** %11, align 8
  %64 = load i64*, i64** %14, align 8
  %65 = icmp ult i64* %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %75

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %11, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %11, align 8
  br label %62

75:                                               ; preds = %70, %62
  %76 = load i64*, i64** %11, align 8
  %77 = load i64*, i64** %14, align 8
  %78 = icmp eq i64* %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %172

82:                                               ; preds = %75
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %87 = call i32 @gfs2_trans_add_meta(i32 %85, %struct.buffer_head* %86)
  br label %141

88:                                               ; preds = %3
  store i32 1, i32* %16, align 4
  %89 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %90 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %89, i32* %15, i32* %16, i32 0, i32* null)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %176

95:                                               ; preds = %88
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @gfs2_trans_add_unrevoke(%struct.gfs2_sbd* %96, i32 %97, i32 1)
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call %struct.buffer_head* @gfs2_meta_new(i32 %101, i32 %102)
  store %struct.buffer_head* %103, %struct.buffer_head** %9, align 8
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %105 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = call i32 @gfs2_trans_add_meta(i32 %106, %struct.buffer_head* %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = load i32, i32* @GFS2_METATYPE_IN, align 4
  %111 = load i32, i32* @GFS2_FORMAT_IN, align 4
  %112 = call i32 @gfs2_metatype_set(%struct.buffer_head* %109, i32 %110, i32 %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %113, i32 %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = inttoptr i64 %121 to i64*
  store i64* %122, i64** %11, align 8
  %123 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %124 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @cpu_to_be64(i32 %125)
  %127 = load i64*, i64** %11, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %130 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @GFS2_DIF_EA_INDIRECT, align 4
  %132 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %133 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %137 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %136, i32 0, i32 1
  %138 = call i32 @gfs2_add_inode_blocks(i32* %137, i32 1)
  %139 = load i64*, i64** %11, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %11, align 8
  br label %141

141:                                              ; preds = %95, %82
  %142 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %143 = call i32 @ea_alloc_blk(%struct.gfs2_inode* %142, %struct.buffer_head** %10)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %172

147:                                              ; preds = %141
  %148 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %149 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @cpu_to_be64(i32 %151)
  %153 = load i64*, i64** %11, align 8
  store i64 %152, i64* %153, align 8
  %154 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %155 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %156 = call i32 @GFS2_EA_BH2FIRST(%struct.buffer_head* %155)
  %157 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %6, align 8
  %158 = call i32 @ea_write(%struct.gfs2_inode* %154, i32 %156, %struct.gfs2_ea_request* %157)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %147
  br label %172

164:                                              ; preds = %147
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @ea_set_remove_stuffed(%struct.gfs2_inode* %168, i8* %169)
  br label %171

171:                                              ; preds = %167, %164
  br label %172

172:                                              ; preds = %171, %163, %146, %79, %45
  %173 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %174 = call i32 @brelse(%struct.buffer_head* %173)
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %93, %37
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_meta_read(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_trans_add_unrevoke(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_metatype_set(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @ea_alloc_blk(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @ea_write(%struct.gfs2_inode*, i32, %struct.gfs2_ea_request*) #1

declare dso_local i32 @GFS2_EA_BH2FIRST(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ea_set_remove_stuffed(%struct.gfs2_inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
