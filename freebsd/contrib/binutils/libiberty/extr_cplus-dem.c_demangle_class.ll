; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_demangle_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, %struct.TYPE_10__*)* @demangle_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_class(%struct.work_stuff* %0, i8** %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i8*, align 8
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %10, align 8
  %11 = call i32 @string_init(%struct.TYPE_10__* %9)
  %12 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %13 = call i32 @register_Btype(%struct.work_stuff* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i64 @demangle_class_name(%struct.work_stuff* %14, i8** %15, %struct.TYPE_10__* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %22 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %28 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %26, %18
  %33 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %34 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %39 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %46 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %42, %37, %32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i32 @string_prepends(%struct.TYPE_10__* %52, %struct.TYPE_10__* %9)
  %54 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %55 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = call i32 @string_prepend(%struct.TYPE_10__* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %63 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %71

66:                                               ; preds = %51
  %67 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %68 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @LEN_STRING(%struct.TYPE_10__* %9)
  %79 = call i32 @remember_Ktype(%struct.work_stuff* %75, i8* %77, i32 %78)
  %80 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @LEN_STRING(%struct.TYPE_10__* %9)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @remember_Btype(%struct.work_stuff* %80, i8* %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %88 = call i8* @SCOPE_STRING(%struct.work_stuff* %87)
  %89 = call i32 @string_prepend(%struct.TYPE_10__* %86, i8* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = call i32 @string_prepends(%struct.TYPE_10__* %90, %struct.TYPE_10__* %9)
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %72, %3
  %93 = call i32 @string_delete(%struct.TYPE_10__* %9)
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @string_init(%struct.TYPE_10__*) #1

declare dso_local i32 @register_Btype(%struct.work_stuff*) #1

declare dso_local i64 @demangle_class_name(%struct.work_stuff*, i8**, %struct.TYPE_10__*) #1

declare dso_local i32 @string_prepends(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @string_prepend(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @remember_Ktype(%struct.work_stuff*, i8*, i32) #1

declare dso_local i32 @LEN_STRING(%struct.TYPE_10__*) #1

declare dso_local i32 @remember_Btype(%struct.work_stuff*, i8*, i32, i32) #1

declare dso_local i8* @SCOPE_STRING(%struct.work_stuff*) #1

declare dso_local i32 @string_delete(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
