; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_load_code_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_load_code_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.code_page_data = type { i32* }
%struct.code_page_directory = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CP_DIR_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"HPFS: Code page directory magic doesn't match (magic = %08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"HPFS: n_code_pages == 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"HPFS: Code page index out of array\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"HPFS: Code page index out of sector\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"HPFS: out of memory for code page table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpfs_load_code_page(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.code_page_data*, align 8
  %13 = alloca %struct.code_page_directory*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @hpfs_map_sector(%struct.super_block* %14, i32 %15, %struct.buffer_head** %6, i32 0)
  %17 = bitcast i8* %16 to %struct.code_page_directory*
  store %struct.code_page_directory* %17, %struct.code_page_directory** %13, align 8
  %18 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %19 = icmp ne %struct.code_page_directory* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %162

21:                                               ; preds = %2
  %22 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %23 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CP_DIR_MAGIC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %29 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = call i32 @brelse(%struct.buffer_head* %32)
  store i8* null, i8** %3, align 8
  br label %162

34:                                               ; preds = %21
  %35 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %36 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  store i8* null, i8** %3, align 8
  br label %162

43:                                               ; preds = %34
  %44 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %45 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.code_page_directory*, %struct.code_page_directory** %13, align 8
  %51 = getelementptr inbounds %struct.code_page_directory, %struct.code_page_directory* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp uge i32 %58, 3
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %162

62:                                               ; preds = %43
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @hpfs_map_sector(%struct.super_block* %63, i32 %64, %struct.buffer_head** %6, i32 0)
  %66 = bitcast i8* %65 to %struct.code_page_data*
  store %struct.code_page_data* %66, %struct.code_page_data** %12, align 8
  %67 = icmp ne %struct.code_page_data* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i8* null, i8** %3, align 8
  br label %162

69:                                               ; preds = %62
  %70 = load %struct.code_page_data*, %struct.code_page_data** %12, align 8
  %71 = getelementptr inbounds %struct.code_page_data, %struct.code_page_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ugt i32 %76, 376
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  store i8* null, i8** %3, align 8
  br label %162

82:                                               ; preds = %69
  %83 = load %struct.code_page_data*, %struct.code_page_data** %12, align 8
  %84 = bitcast %struct.code_page_data* %83 to i8*
  %85 = load %struct.code_page_data*, %struct.code_page_data** %12, align 8
  %86 = getelementptr inbounds %struct.code_page_data, %struct.code_page_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %84, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  store i8* %94, i8** %9, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @kmalloc(i32 256, i32 %95)
  store i8* %96, i8** %10, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %82
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %101 = call i32 @brelse(%struct.buffer_head* %100)
  store i8* null, i8** %3, align 8
  br label %162

102:                                              ; preds = %82
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @memcpy(i8* %103, i8* %104, i32 128)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  store i32 128, i32* %11, align 4
  br label %108

108:                                              ; preds = %118, %102
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 256
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %108

121:                                              ; preds = %108
  store i32 128, i32* %11, align 4
  br label %122

122:                                              ; preds = %157, %121
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 256
  br i1 %124, label %125, label %160

125:                                              ; preds = %122
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %127, 128
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %125
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 %137, 128
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp sge i32 %142, 128
  br i1 %143, label %144, label %156

144:                                              ; preds = %135
  %145 = load i32, i32* %11, align 4
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %10, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %149, 128
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds i8, i8* %147, i64 %154
  store i8 %146, i8* %155, align 1
  br label %156

156:                                              ; preds = %144, %135, %125
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %122

160:                                              ; preds = %122
  %161 = load i8*, i8** %10, align 8
  store i8* %161, i8** %3, align 8
  br label %162

162:                                              ; preds = %160, %98, %78, %68, %60, %39, %27, %20
  %163 = load i8*, i8** %3, align 8
  ret i8* %163
}

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
