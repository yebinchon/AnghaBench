; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_internal_cplus_demangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_internal_cplus_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32, i32, i32, i32 }

@TYPE_UNQUALIFIED = common dso_local global i32 0, align 4
@AUTO_DEMANGLING = common dso_local global i64 0, align 8
@GNU_DEMANGLING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"global constructors keyed to \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"global destructors keyed to \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"import stub for \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.work_stuff*, i8*)* @internal_cplus_demangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @internal_cplus_demangle(%struct.work_stuff* %0, i8* %1) #0 {
  %3 = alloca %struct.work_stuff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %12 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %13 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %16 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %19 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %22 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %25 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %27 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @TYPE_UNQUALIFIED, align 4
  %29 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %30 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %32 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %31, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %100

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = call i32 @string_init(i32* %5)
  %42 = load i64, i64* @AUTO_DEMANGLING, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @GNU_DEMANGLING, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %40
  %48 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %49 = call i32 @gnu_special(%struct.work_stuff* %48, i8** %4, i32* %5)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %55 = call i32 @demangle_prefix(%struct.work_stuff* %54, i8** %4, i32* %5)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %66 = call i32 @demangle_signature(%struct.work_stuff* %65, i8** %4, i32* %5)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %59, %56
  %68 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %69 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = call i32 @string_prepend(i32* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %75 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %96

76:                                               ; preds = %67
  %77 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %78 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = call i32 @string_prepend(i32* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %84 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %95

85:                                               ; preds = %76
  %86 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %87 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call i32 @string_prepend(i32* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %93 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %92, i32 0, i32 4
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %72
  %97 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i8* @mop_up(%struct.work_stuff* %97, i32* %5, i32 %98)
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %96, %35, %2
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %103 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %106 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %109 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.work_stuff*, %struct.work_stuff** %3, align 8
  %112 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i8*, i8** %7, align 8
  ret i8* %113
}

declare dso_local i32 @string_init(i32*) #1

declare dso_local i32 @gnu_special(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @demangle_prefix(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @demangle_signature(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @string_prepend(i32*, i8*) #1

declare dso_local i8* @mop_up(%struct.work_stuff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
