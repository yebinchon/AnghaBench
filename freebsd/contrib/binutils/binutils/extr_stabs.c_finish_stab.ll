; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_finish_stab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_finish_stab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { %struct.stab_tag*, i64, i64 }
%struct.stab_tag = type { i32, i32, i32, %struct.stab_tag* }

@FALSE = common dso_local global i64 0, align 8
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@DEBUG_KIND_STRUCT = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @finish_stab(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stab_handle*, align 8
  %7 = alloca %struct.stab_tag*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.stab_handle*
  store %struct.stab_handle* %10, %struct.stab_handle** %6, align 8
  %11 = load %struct.stab_handle*, %struct.stab_handle** %6, align 8
  %12 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.stab_handle*, %struct.stab_handle** %6, align 8
  %18 = call i32 @stab_emit_pending_vars(i8* %16, %struct.stab_handle* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.stab_handle*, %struct.stab_handle** %6, align 8
  %23 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @debug_end_function(i8* %21, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %15
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %3, align 8
  br label %74

29:                                               ; preds = %20
  %30 = load i64, i64* @FALSE, align 8
  %31 = load %struct.stab_handle*, %struct.stab_handle** %6, align 8
  %32 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.stab_handle*, %struct.stab_handle** %6, align 8
  %34 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %33, i32 0, i32 1
  store i64 -1, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.stab_handle*, %struct.stab_handle** %6, align 8
  %37 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %36, i32 0, i32 0
  %38 = load %struct.stab_tag*, %struct.stab_tag** %37, align 8
  store %struct.stab_tag* %38, %struct.stab_tag** %7, align 8
  br label %39

39:                                               ; preds = %68, %35
  %40 = load %struct.stab_tag*, %struct.stab_tag** %7, align 8
  %41 = icmp ne %struct.stab_tag* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = load %struct.stab_tag*, %struct.stab_tag** %7, align 8
  %44 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @DEBUG_KIND_STRUCT, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.stab_tag*, %struct.stab_tag** %7, align 8
  %54 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @debug_make_undefined_tagged_type(i8* %52, i32 %55, i32 %56)
  %58 = load %struct.stab_tag*, %struct.stab_tag** %7, align 8
  %59 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.stab_tag*, %struct.stab_tag** %7, align 8
  %61 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* %3, align 8
  br label %74

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.stab_tag*, %struct.stab_tag** %7, align 8
  %70 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %69, i32 0, i32 3
  %71 = load %struct.stab_tag*, %struct.stab_tag** %70, align 8
  store %struct.stab_tag* %71, %struct.stab_tag** %7, align 8
  br label %39

72:                                               ; preds = %39
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %72, %65, %27
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i32 @stab_emit_pending_vars(i8*, %struct.stab_handle*) #1

declare dso_local i32 @debug_end_function(i8*, i64) #1

declare dso_local i32 @debug_make_undefined_tagged_type(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
