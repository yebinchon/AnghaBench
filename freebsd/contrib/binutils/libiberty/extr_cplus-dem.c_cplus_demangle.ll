; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_cplus_demangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_cplus_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }

@current_demangling_style = common dso_local global i64 0, align 8
@no_demangling = common dso_local global i64 0, align 8
@DMGL_STYLE_MASK = common dso_local global i32 0, align 4
@GNU_V3_DEMANGLING = common dso_local global i64 0, align 8
@AUTO_DEMANGLING = common dso_local global i64 0, align 8
@JAVA_DEMANGLING = common dso_local global i64 0, align 8
@GNAT_DEMANGLING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cplus_demangle(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.work_stuff], align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @current_demangling_style, align 8
  %9 = load i64, i64* @no_demangling, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @xstrdup(i8* %12)
  store i8* %13, i8** %3, align 8
  br label %81

14:                                               ; preds = %2
  %15 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %16 = bitcast %struct.work_stuff* %15 to i8*
  %17 = call i32 @memset(i8* %16, i32 0, i32 4)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %20 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMGL_STYLE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = load i64, i64* @current_demangling_style, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @DMGL_STYLE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %33 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %14
  %37 = load i64, i64* @GNU_V3_DEMANGLING, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @AUTO_DEMANGLING, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39, %36
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %45 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cplus_demangle_v3(i8* %43, i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* @GNU_V3_DEMANGLING, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %42
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %3, align 8
  br label %81

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i64, i64* @JAVA_DEMANGLING, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* @java_demangle_v3(i8* %60)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %3, align 8
  br label %81

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i64, i64* @GNAT_DEMANGLING, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i8* @ada_demangle(i8* %71, i32 %72)
  store i8* %73, i8** %3, align 8
  br label %81

74:                                               ; preds = %67
  %75 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %76 = load i8*, i8** %4, align 8
  %77 = call i8* @internal_cplus_demangle(%struct.work_stuff* %75, i8* %76)
  store i8* %77, i8** %6, align 8
  %78 = getelementptr inbounds [1 x %struct.work_stuff], [1 x %struct.work_stuff]* %7, i64 0, i64 0
  %79 = call i32 @squangle_mop_up(%struct.work_stuff* %78)
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %74, %70, %64, %53, %11
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cplus_demangle_v3(i8*, i32) #1

declare dso_local i8* @java_demangle_v3(i8*) #1

declare dso_local i8* @ada_demangle(i8*, i32) #1

declare dso_local i8* @internal_cplus_demangle(%struct.work_stuff*, i8*) #1

declare dso_local i32 @squangle_mop_up(%struct.work_stuff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
