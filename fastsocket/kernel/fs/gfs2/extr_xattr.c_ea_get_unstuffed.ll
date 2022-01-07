; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_get_unstuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_get_unstuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_ea_header = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFS2_METATYPE_ED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_header*, i8*)* @ea_get_unstuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_get_unstuffed(%struct.gfs2_inode* %0, %struct.gfs2_ea_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_ea_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_ea_header* %1, %struct.gfs2_ea_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 1
  %17 = call %struct.gfs2_sbd* @GFS2_SB(i32* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %8, align 8
  %18 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %19 = call i32 @GFS2_EA_DATA_LEN(%struct.gfs2_ea_header* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %26 = call i32* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %25)
  store i32* %26, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call %struct.buffer_head** @kcalloc(i32 %27, i32 8, i32 %28)
  store %struct.buffer_head** %29, %struct.buffer_head*** %9, align 8
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %31 = icmp ne %struct.buffer_head** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %181

35:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be64_to_cpu(i32 %45)
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %47, i64 %49
  %51 = call i32 @gfs2_meta_read(i32 %43, i32 %46, i32 0, %struct.buffer_head** %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %60, i64 %62
  %64 = load %struct.buffer_head*, %struct.buffer_head** %63, align 8
  %65 = call i32 @brelse(%struct.buffer_head* %64)
  br label %55

66:                                               ; preds = %55
  br label %177

67:                                               ; preds = %40
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %12, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %36

73:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %173, %73
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %176

78:                                               ; preds = %74
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %80 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %80, i64 %82
  %84 = load %struct.buffer_head*, %struct.buffer_head** %83, align 8
  %85 = call i32 @gfs2_meta_wait(%struct.gfs2_sbd* %79, %struct.buffer_head* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %94, i64 %96
  %98 = load %struct.buffer_head*, %struct.buffer_head** %97, align 8
  %99 = call i32 @brelse(%struct.buffer_head* %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %89

103:                                              ; preds = %89
  br label %177

104:                                              ; preds = %78
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %106 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %106, i64 %108
  %110 = load %struct.buffer_head*, %struct.buffer_head** %109, align 8
  %111 = load i32, i32* @GFS2_METATYPE_ED, align 4
  %112 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %105, %struct.buffer_head* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %126, %114
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %121 = load i32, i32* %13, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %120, i64 %122
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  br label %177

132:                                              ; preds = %104
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %134, i64 %136
  %138 = load %struct.buffer_head*, %struct.buffer_head** %137, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 4
  %142 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %143 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %132
  %148 = load i32, i32* %10, align 4
  br label %153

149:                                              ; preds = %132
  %150 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %151 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  br label %153

153:                                              ; preds = %149, %147
  %154 = phi i32 [ %148, %147 ], [ %152, %149 ]
  %155 = call i32 @memcpy(i8* %133, i64 %141, i32 %154)
  %156 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %157 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sub i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %162 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %7, align 8
  %167 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %168 = load i32, i32* %13, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %167, i64 %169
  %171 = load %struct.buffer_head*, %struct.buffer_head** %170, align 8
  %172 = call i32 @brelse(%struct.buffer_head* %171)
  br label %173

173:                                              ; preds = %153
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %74

176:                                              ; preds = %74
  br label %177

177:                                              ; preds = %176, %129, %103, %66
  %178 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %179 = call i32 @kfree(%struct.buffer_head** %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %177, %32
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @GFS2_EA_DATA_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header*) #1

declare dso_local %struct.buffer_head** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_meta_wait(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
