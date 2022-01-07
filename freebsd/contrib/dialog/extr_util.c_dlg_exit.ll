; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }
%struct.TYPE_2__ = type { i64, i64 }

@dlg_exit.table = internal constant [7 x %struct.anon] [%struct.anon { i32 134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [14 x i8] c"DIALOG_CANCEL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DIALOG_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DIALOG_ESC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"DIALOG_EXTRA\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"DIALOG_HELP\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DIALOG_OK\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"DIALOG_ITEM_HELP\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stdin = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %60, %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %51, %9
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 7
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @dlg_exit.table, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 16
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @dlg_exit.table, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @getenv(i8* %27)
  store i8* %28, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strtol(i8* %31, i8** %5, i32 0)
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %39, %35, %30
  br label %49

49:                                               ; preds = %48, %22
  br label %54

50:                                               ; preds = %14
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %10

54:                                               ; preds = %49, %10
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 130, i32* %2, align 4
  br label %9

61:                                               ; preds = %57, %54
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  %63 = load i64, i64* @stdin, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @exit(i32 %66) #3
  unreachable

68:                                               ; preds = %61
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  %73 = call i32 @fclose(i64 %72)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 1), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 1), align 8
  %79 = load i64, i64* @stdin, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 1), align 8
  %83 = call i32 @fclose(i64 %82)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 1), align 8
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @_exit(i32 %86) #3
  unreachable
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fclose(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
