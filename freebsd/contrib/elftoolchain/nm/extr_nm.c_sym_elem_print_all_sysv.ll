; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_print_all_sysv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_print_all_sysv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32, i64 }

@nm_opts = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"%-20s|\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"|   %c  |\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%18s|\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SECTION\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"LOPROC\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"HIPROC\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"NOTYPE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"|     |%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, %struct.TYPE_6__*, i8*)* @sym_elem_print_all_sysv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_elem_print_all_sysv(i8 signext %0, i8* %1, %struct.TYPE_6__* %2, i8* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nm_opts, i32 0, i32 1), align 8
  %19 = icmp eq i32 (%struct.TYPE_6__*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %4
  br label %70

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @PRINT_DEMANGLED_NAME(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i8, i8* %5, align 1
  %25 = call i64 @IS_UNDEF_SYM_TYPE(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %33

29:                                               ; preds = %21
  %30 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nm_opts, i32 0, i32 1), align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = call i32 %30(%struct.TYPE_6__* %31)
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 15
  switch i32 %40, label %54 [
    i32 129, label %41
    i32 133, label %43
    i32 128, label %45
    i32 134, label %47
    i32 131, label %49
    i32 132, label %51
    i32 130, label %53
  ]

41:                                               ; preds = %33
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %56

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %56

45:                                               ; preds = %33
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %56

47:                                               ; preds = %33
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %56

49:                                               ; preds = %33
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %56

51:                                               ; preds = %33
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %56

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %33, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51, %49, %47, %45, %43, %41
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nm_opts, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = call i32 %62(%struct.TYPE_6__* %63)
  br label %67

65:                                               ; preds = %56
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %20
  ret void
}

declare dso_local i32 @PRINT_DEMANGLED_NAME(i8*, i8*) #1

declare dso_local i64 @IS_UNDEF_SYM_TYPE(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
