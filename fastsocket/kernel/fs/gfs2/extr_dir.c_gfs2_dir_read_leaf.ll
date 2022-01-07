; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_read_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_read_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64, i32, i64 }
%struct.gfs2_leaf = type { i64, i32, i64 }
%struct.gfs2_dirent = type { i32 }
%struct.dirent_gather = type { i32, %struct.gfs2_dirent** }

@ENOMEM = common dso_local global i32 0, align 4
@gfs2_dirent_gather = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Number of entries corrupt in dir leaf %llu, entries2 (%u) != g.offset (%u)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i8*, i32, i32*, i32*, i64)* @gfs2_dir_read_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_read_leaf(%struct.inode* %0, i64* %1, i8* %2, i32 %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.gfs2_inode*, align 8
  %17 = alloca %struct.gfs2_sbd*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.gfs2_leaf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.gfs2_dirent**, align 8
  %24 = alloca %struct.gfs2_dirent*, align 8
  %25 = alloca %struct.dirent_gather, align 8
  %26 = alloca %struct.buffer_head**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %31)
  store %struct.gfs2_inode* %32, %struct.gfs2_inode** %16, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %33)
  store %struct.gfs2_sbd* %34, %struct.gfs2_sbd** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %27, align 4
  %35 = load i64, i64* %15, align 8
  store i64 %35, i64* %30, align 8
  br label %36

36:                                               ; preds = %71, %7
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %38 = load i64, i64* %30, align 8
  %39 = call i32 @get_leaf(%struct.gfs2_inode* %37, i64 %38, %struct.buffer_head** %18)
  store i32 %39, i32* %28, align 4
  %40 = load i32, i32* %28, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %206

43:                                               ; preds = %36
  %44 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %47, %struct.gfs2_leaf** %19, align 8
  %48 = load i32, i32* %22, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %19, align 8
  %52 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @be16_to_cpu(i64 %53)
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %19, align 8
  %58 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @be16_to_cpu(i64 %59)
  %61 = load i32, i32* %20, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %22, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %22, align 4
  %65 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %19, align 8
  %66 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @be64_to_cpu(i32 %67)
  store i64 %68, i64* %30, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %30, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %36, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %208

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %28, align 4
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %20, align 4
  %83 = add i32 %81, %82
  %84 = add i32 %83, 99
  %85 = zext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call %struct.buffer_head** @gfs2_alloc_sort_buffer(i32 %87)
  store %struct.buffer_head** %88, %struct.buffer_head*** %26, align 8
  %89 = load %struct.buffer_head**, %struct.buffer_head*** %26, align 8
  %90 = icmp ne %struct.buffer_head** %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %78
  br label %206

92:                                               ; preds = %78
  %93 = load %struct.buffer_head**, %struct.buffer_head*** %26, align 8
  %94 = load i32, i32* %22, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %93, i64 %95
  %97 = bitcast %struct.buffer_head** %96 to %struct.gfs2_dirent**
  store %struct.gfs2_dirent** %97, %struct.gfs2_dirent*** %23, align 8
  %98 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %23, align 8
  %99 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %25, i32 0, i32 1
  store %struct.gfs2_dirent** %98, %struct.gfs2_dirent*** %99, align 8
  %100 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %25, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i64, i64* %15, align 8
  store i64 %101, i64* %30, align 8
  br label %102

102:                                              ; preds = %171, %92
  %103 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %104 = load i64, i64* %30, align 8
  %105 = call i32 @get_leaf(%struct.gfs2_inode* %103, i64 %104, %struct.buffer_head** %18)
  store i32 %105, i32* %28, align 4
  %106 = load i32, i32* %28, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %188

109:                                              ; preds = %102
  %110 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %113, %struct.gfs2_leaf** %19, align 8
  %114 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %19, align 8
  %115 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @be64_to_cpu(i32 %116)
  store i64 %117, i64* %30, align 8
  %118 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %19, align 8
  %119 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %167

122:                                              ; preds = %109
  %123 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %19, align 8
  %124 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @be16_to_cpu(i64 %125)
  %127 = load i32, i32* %21, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %21, align 4
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %134 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @gfs2_dirent_gather, align 4
  %137 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %129, i64 %132, i32 %135, i32 %136, i32* null, %struct.dirent_gather* %25)
  store %struct.gfs2_dirent* %137, %struct.gfs2_dirent** %24, align 8
  %138 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %24, align 8
  %139 = call i32 @PTR_ERR(%struct.gfs2_dirent* %138)
  store i32 %139, i32* %28, align 4
  %140 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %24, align 8
  %141 = call i64 @IS_ERR(%struct.gfs2_dirent* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %122
  br label %188

144:                                              ; preds = %122
  %145 = load i32, i32* %21, align 4
  %146 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %25, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %17, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %21, align 4
  %155 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %25, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @fs_warn(%struct.gfs2_sbd* %150, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %153, i32 %154, i32 %156)
  %158 = load i32, i32* @EIO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %28, align 4
  br label %188

160:                                              ; preds = %144
  store i32 0, i32* %28, align 4
  %161 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %162 = load %struct.buffer_head**, %struct.buffer_head*** %26, align 8
  %163 = load i32, i32* %27, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %27, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %162, i64 %165
  store %struct.buffer_head* %161, %struct.buffer_head** %166, align 8
  br label %170

167:                                              ; preds = %109
  %168 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  br label %170

170:                                              ; preds = %167, %160
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %30, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %102, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp ne i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @BUG_ON(i32 %178)
  %180 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %181 = load i64*, i64** %10, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %23, align 8
  %185 = load i32, i32* %20, align 4
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @do_filldir_main(%struct.gfs2_inode* %180, i64* %181, i8* %182, i32 %183, %struct.gfs2_dirent** %184, i32 %185, i32* %186)
  store i32 %187, i32* %28, align 4
  br label %188

188:                                              ; preds = %174, %149, %143, %108
  store i32 0, i32* %29, align 4
  br label %189

189:                                              ; preds = %200, %188
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* %27, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load %struct.buffer_head**, %struct.buffer_head*** %26, align 8
  %195 = load i32, i32* %29, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %194, i64 %196
  %198 = load %struct.buffer_head*, %struct.buffer_head** %197, align 8
  %199 = call i32 @brelse(%struct.buffer_head* %198)
  br label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %29, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %29, align 4
  br label %189

203:                                              ; preds = %189
  %204 = load %struct.buffer_head**, %struct.buffer_head*** %26, align 8
  %205 = call i32 @gfs2_free_sort_buffer(%struct.buffer_head** %204)
  br label %206

206:                                              ; preds = %203, %91, %42
  %207 = load i32, i32* %28, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %206, %77
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head** @gfs2_alloc_sort_buffer(i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode*, i64, i32, i32, i32*, %struct.dirent_gather*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_filldir_main(%struct.gfs2_inode*, i64*, i8*, i32, %struct.gfs2_dirent**, i32, i32*) #1

declare dso_local i32 @gfs2_free_sort_buffer(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
