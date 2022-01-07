; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_write_pch_globals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_write_pch_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_root_tab = type { i64, i64, i32* }
%struct.traversal_state = type { i32 }
%struct.ptr_data = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@saving_htab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ggc_root_tab**, %struct.traversal_state*)* @write_pch_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pch_globals(%struct.ggc_root_tab** %0, %struct.traversal_state* %1) #0 {
  %3 = alloca %struct.ggc_root_tab**, align 8
  %4 = alloca %struct.traversal_state*, align 8
  %5 = alloca %struct.ggc_root_tab**, align 8
  %6 = alloca %struct.ggc_root_tab*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ptr_data*, align 8
  store %struct.ggc_root_tab** %0, %struct.ggc_root_tab*** %3, align 8
  store %struct.traversal_state* %1, %struct.traversal_state** %4, align 8
  %10 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %3, align 8
  store %struct.ggc_root_tab** %10, %struct.ggc_root_tab*** %5, align 8
  br label %11

11:                                               ; preds = %82, %2
  %12 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %5, align 8
  %13 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %12, align 8
  %14 = icmp ne %struct.ggc_root_tab* %13, null
  br i1 %14, label %15, label %85

15:                                               ; preds = %11
  %16 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %5, align 8
  %17 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %16, align 8
  store %struct.ggc_root_tab* %17, %struct.ggc_root_tab** %6, align 8
  br label %18

18:                                               ; preds = %78, %15
  %19 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %6, align 8
  %20 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %81

23:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %74, %23
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %6, align 8
  %27 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %24
  %31 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %6, align 8
  %32 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %6, align 8
  %36 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = bitcast i8* %40 to i8**
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, inttoptr (i64 1 to i8*)
  br i1 %47, label %48, label %57

48:                                               ; preds = %45, %30
  %49 = load %struct.traversal_state*, %struct.traversal_state** %4, align 8
  %50 = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fwrite(i8** %8, i32 8, i32 1, i32 %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %48
  br label %73

57:                                               ; preds = %45
  %58 = load i32, i32* @saving_htab, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @POINTER_HASH(i8* %60)
  %62 = call %struct.ptr_data* @htab_find_with_hash(i32 %58, i8* %59, i32 %61)
  store %struct.ptr_data* %62, %struct.ptr_data** %9, align 8
  %63 = load %struct.ptr_data*, %struct.ptr_data** %9, align 8
  %64 = getelementptr inbounds %struct.ptr_data, %struct.ptr_data* %63, i32 0, i32 0
  %65 = load %struct.traversal_state*, %struct.traversal_state** %4, align 8
  %66 = getelementptr inbounds %struct.traversal_state, %struct.traversal_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fwrite(i8** %64, i32 8, i32 1, i32 %67)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = call i32 @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %57
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %24

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %6, align 8
  %80 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %79, i32 1
  store %struct.ggc_root_tab* %80, %struct.ggc_root_tab** %6, align 8
  br label %18

81:                                               ; preds = %18
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %5, align 8
  %84 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %83, i32 1
  store %struct.ggc_root_tab** %84, %struct.ggc_root_tab*** %5, align 8
  br label %11

85:                                               ; preds = %11
  ret void
}

declare dso_local i32 @fwrite(i8**, i32, i32, i32) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local %struct.ptr_data* @htab_find_with_hash(i32, i8*, i32) #1

declare dso_local i32 @POINTER_HASH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
