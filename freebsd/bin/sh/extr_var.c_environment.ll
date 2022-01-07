; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var = type { i32, i32, %struct.var* }

@vartab = common dso_local global %struct.var** null, align 8
@VTABSIZE = common dso_local global i32 0, align 4
@VEXPORT = common dso_local global i32 0, align 4
@VUNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @environment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.var**, align 8
  %3 = alloca %struct.var*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  %6 = load %struct.var**, %struct.var*** @vartab, align 8
  store %struct.var** %6, %struct.var*** %2, align 8
  br label %7

7:                                                ; preds = %39, %0
  %8 = load %struct.var**, %struct.var*** %2, align 8
  %9 = load %struct.var**, %struct.var*** @vartab, align 8
  %10 = load i32, i32* @VTABSIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.var*, %struct.var** %9, i64 %11
  %13 = icmp ult %struct.var** %8, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %7
  %15 = load %struct.var**, %struct.var*** %2, align 8
  %16 = load %struct.var*, %struct.var** %15, align 8
  store %struct.var* %16, %struct.var** %3, align 8
  br label %17

17:                                               ; preds = %34, %14
  %18 = load %struct.var*, %struct.var** %3, align 8
  %19 = icmp ne %struct.var* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load %struct.var*, %struct.var** %3, align 8
  %22 = getelementptr inbounds %struct.var, %struct.var* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VEXPORT, align 4
  %25 = load i32, i32* @VUNSET, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @VEXPORT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.var*, %struct.var** %3, align 8
  %36 = getelementptr inbounds %struct.var, %struct.var* %35, i32 0, i32 2
  %37 = load %struct.var*, %struct.var** %36, align 8
  store %struct.var* %37, %struct.var** %3, align 8
  br label %17

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.var**, %struct.var*** %2, align 8
  %41 = getelementptr inbounds %struct.var*, %struct.var** %40, i32 1
  store %struct.var** %41, %struct.var*** %2, align 8
  br label %7

42:                                               ; preds = %7
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i8** @stalloc(i32 %47)
  store i8** %48, i8*** %4, align 8
  store i8** %48, i8*** %5, align 8
  %49 = load %struct.var**, %struct.var*** @vartab, align 8
  store %struct.var** %49, %struct.var*** %2, align 8
  br label %50

50:                                               ; preds = %87, %42
  %51 = load %struct.var**, %struct.var*** %2, align 8
  %52 = load %struct.var**, %struct.var*** @vartab, align 8
  %53 = load i32, i32* @VTABSIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.var*, %struct.var** %52, i64 %54
  %56 = icmp ult %struct.var** %51, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %50
  %58 = load %struct.var**, %struct.var*** %2, align 8
  %59 = load %struct.var*, %struct.var** %58, align 8
  store %struct.var* %59, %struct.var** %3, align 8
  br label %60

60:                                               ; preds = %82, %57
  %61 = load %struct.var*, %struct.var** %3, align 8
  %62 = icmp ne %struct.var* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load %struct.var*, %struct.var** %3, align 8
  %65 = getelementptr inbounds %struct.var, %struct.var* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VEXPORT, align 4
  %68 = load i32, i32* @VUNSET, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = load i32, i32* @VEXPORT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.var*, %struct.var** %3, align 8
  %75 = getelementptr inbounds %struct.var, %struct.var* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %5, align 8
  store i8* %78, i8** %79, align 8
  br label %81

81:                                               ; preds = %73, %63
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.var*, %struct.var** %3, align 8
  %84 = getelementptr inbounds %struct.var, %struct.var* %83, i32 0, i32 2
  %85 = load %struct.var*, %struct.var** %84, align 8
  store %struct.var* %85, %struct.var** %3, align 8
  br label %60

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.var**, %struct.var*** %2, align 8
  %89 = getelementptr inbounds %struct.var*, %struct.var** %88, i32 1
  store %struct.var** %89, %struct.var*** %2, align 8
  br label %50

90:                                               ; preds = %50
  %91 = load i8**, i8*** %5, align 8
  store i8* null, i8** %91, align 8
  %92 = load i8**, i8*** %4, align 8
  ret i8** %92
}

declare dso_local i8** @stalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
