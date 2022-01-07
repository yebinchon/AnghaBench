; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_snapshot_write_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_snapshot_write_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain_allocator = type { i32 }
%struct.snapshot_handle = type { i64, i64, i64, i32, i64, i64, i8* }

@snapshot_write_next.ca = internal global %struct.chain_allocator zeroinitializer, align 4
@nr_meta_pages = common dso_local global i64 0, align 8
@nr_copy_pages = common dso_local global i64 0, align 8
@buffer = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@copy_bm = common dso_local global i32 0, align 4
@orig_bm = common dso_local global i32 0, align 4
@PG_SAFE = common dso_local global i32 0, align 4
@restore_pblist = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_write_next(%struct.snapshot_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snapshot_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snapshot_handle* %0, %struct.snapshot_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %8 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %13 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @nr_meta_pages, align 8
  %16 = load i64, i64* @nr_copy_pages, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %191

20:                                               ; preds = %11, %2
  %21 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %22 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load i8*, i8** @buffer, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = load i32, i32* @PG_ANY, align 4
  %31 = call i8* @get_image_page(i32 %29, i32 %30)
  store i8* %31, i8** @buffer, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** @buffer, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %191

38:                                               ; preds = %32
  %39 = load i8*, i8** @buffer, align 8
  %40 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %41 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %20
  %43 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %44 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %43, i32 0, i32 3
  store i32 1, i32* %44, align 8
  %45 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %46 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %49 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %152

52:                                               ; preds = %42
  %53 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %54 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i8*, i8** @buffer, align 8
  %59 = call i32 @load_header(i8* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %191

64:                                               ; preds = %57
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = load i32, i32* @PG_ANY, align 4
  %67 = call i32 @memory_bm_create(i32* @copy_bm, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %191

72:                                               ; preds = %64
  br label %146

73:                                               ; preds = %52
  %74 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %75 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @nr_meta_pages, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %120

79:                                               ; preds = %73
  %80 = load i8*, i8** @buffer, align 8
  %81 = call i32 @unpack_orig_pfns(i8* %80, i32* @copy_bm)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %191

86:                                               ; preds = %79
  %87 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %88 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @nr_meta_pages, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %86
  %93 = call i32 @prepare_image(i32* @orig_bm, i32* @copy_bm)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %191

98:                                               ; preds = %92
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = load i32, i32* @PG_SAFE, align 4
  %101 = call i32 @chain_init(%struct.chain_allocator* @snapshot_write_next.ca, i32 %99, i32 %100)
  %102 = call i32 @memory_bm_position_reset(i32* @orig_bm)
  store i32* null, i32** @restore_pblist, align 8
  %103 = call i8* @get_buffer(i32* @orig_bm, %struct.chain_allocator* @snapshot_write_next.ca)
  %104 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %105 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %107 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %106, i32 0, i32 3
  store i32 0, i32* %107, align 8
  %108 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %109 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %115 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %3, align 4
  br label %191

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %86
  br label %145

120:                                              ; preds = %73
  %121 = call i32 (...) @copy_last_highmem_page()
  %122 = call i8* @get_buffer(i32* @orig_bm, %struct.chain_allocator* @snapshot_write_next.ca)
  %123 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %124 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %126 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %132 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %131, i32 0, i32 6
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %3, align 4
  br label %191

135:                                              ; preds = %120
  %136 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %137 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** @buffer, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %143 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %142, i32 0, i32 3
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %135
  br label %145

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %145, %72
  %147 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %148 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %151 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %146, %42
  %153 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %154 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %157 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %156, i32 0, i32 4
  store i64 %155, i64* %157, align 8
  %158 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %159 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = add i64 %160, %161
  %163 = load i64, i64* @PAGE_SIZE, align 8
  %164 = icmp uge i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %152
  %166 = load i64, i64* @PAGE_SIZE, align 8
  %167 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %168 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  store i64 %170, i64* %5, align 8
  %171 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %172 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %171, i32 0, i32 5
  store i64 0, i64* %172, align 8
  %173 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %174 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %174, align 8
  br label %183

177:                                              ; preds = %152
  %178 = load i64, i64* %5, align 8
  %179 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %180 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %178
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %177, %165
  %184 = load i64, i64* %5, align 8
  %185 = load %struct.snapshot_handle*, %struct.snapshot_handle** %4, align 8
  %186 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load i64, i64* %5, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %183, %130, %113, %96, %84, %70, %62, %35, %19
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @get_image_page(i32, i32) #1

declare dso_local i32 @load_header(i8*) #1

declare dso_local i32 @memory_bm_create(i32*, i32, i32) #1

declare dso_local i32 @unpack_orig_pfns(i8*, i32*) #1

declare dso_local i32 @prepare_image(i32*, i32*) #1

declare dso_local i32 @chain_init(%struct.chain_allocator*, i32, i32) #1

declare dso_local i32 @memory_bm_position_reset(i32*) #1

declare dso_local i8* @get_buffer(i32*, %struct.chain_allocator*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @copy_last_highmem_page(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
