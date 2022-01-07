; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_legacy_push_dummy_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_legacy_push_dummy_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@DEPRECATED_SIZEOF_CALL_DUMMY_WORDS = common dso_local global i32 0, align 4
@DEPRECATED_REGISTER_SIZE = common dso_local global i32 0, align 4
@DEPRECATED_CALL_DUMMY_WORDS = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@DEPRECATED_CALL_DUMMY_BREAKPOINT_OFFSET = common dso_local global i32 0, align 4
@DEPRECATED_CALL_DUMMY_START_OFFSET = common dso_local global i64 0, align 8
@DEPRECATED_USE_GENERIC_DUMMY_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, i32, i32, %struct.value**, i32, %struct.type*, i32*, i32*)* @legacy_push_dummy_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_push_dummy_code(%struct.gdbarch* %0, i32 %1, i32 %2, i32 %3, %struct.value** %4, i32 %5, %struct.type* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.value**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.value** %4, %struct.value*** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.type* %6, %struct.type** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = load i32, i32* @DEPRECATED_SIZEOF_CALL_DUMMY_WORDS, align 4
  %25 = call i8* @alloca(i32 %24)
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %20, align 8
  %27 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %28 = load i32, i32* @DEPRECATED_SIZEOF_CALL_DUMMY_WORDS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %21, align 4
  %34 = call i8* @alloca(i32 %33)
  store i8* %34, i8** %22, align 8
  %35 = load i64*, i64** %20, align 8
  %36 = load i32, i32* @DEPRECATED_CALL_DUMMY_WORDS, align 4
  %37 = load i32, i32* @DEPRECATED_SIZEOF_CALL_DUMMY_WORDS, align 4
  %38 = call i32 @memcpy(i64* %35, i32 %36, i32 %37)
  %39 = call i64 @INNER_THAN(i32 1, i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %9
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %19, align 4
  br label %51

46:                                               ; preds = %9
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %41
  store i32 0, i32* %23, align 4
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* @DEPRECATED_SIZEOF_CALL_DUMMY_WORDS, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load i8*, i8** %22, align 8
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %67 = load i64*, i64** %20, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @store_unsigned_integer(i8* %65, i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %23, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i32, i32* @current_gdbarch, align 4
  %78 = call i32 @gdbarch_push_dummy_call_p(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = call i64 (...) @DEPRECATED_FIX_CALL_DUMMY_P()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i8*, i8** %22, align 8
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.value**, %struct.value*** %14, align 8
  %89 = load %struct.type*, %struct.type** %16, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @DEPRECATED_FIX_CALL_DUMMY(i8* %84, i32 %85, i32 %86, i32 %87, %struct.value** %88, %struct.type* %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %80
  %93 = load i32, i32* %19, align 4
  %94 = load i32*, i32** %17, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %76
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DEPRECATED_CALL_DUMMY_BREAKPOINT_OFFSET, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32*, i32** %18, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i64, i64* @DEPRECATED_CALL_DUMMY_START_OFFSET, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %101
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i8*, i8** %22, align 8
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @write_memory(i32 %107, i8* %108, i32 %109)
  %111 = load i64, i64* @DEPRECATED_USE_GENERIC_DUMMY_FRAMES, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %95
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @generic_save_call_dummy_addr(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %95
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i64 @INNER_THAN(i32, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @gdbarch_push_dummy_call_p(i32) #1

declare dso_local i64 @DEPRECATED_FIX_CALL_DUMMY_P(...) #1

declare dso_local i32 @DEPRECATED_FIX_CALL_DUMMY(i8*, i32, i32, i32, %struct.value**, %struct.type*, i32) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @generic_save_call_dummy_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
