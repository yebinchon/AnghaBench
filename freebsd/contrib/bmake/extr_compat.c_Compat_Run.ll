; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_compat.c_Compat_Run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_compat.c_Compat_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32 }

@shellName = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@CompatInterrupt = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".END\00", align 1
@TARG_CREATE = common dso_local global i32 0, align 4
@ENDNode = common dso_local global %struct.TYPE_7__* null, align 8
@OP_SPECIAL = common dso_local global i32 0, align 4
@queryFlag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c".BEGIN\00", align 1
@TARG_NOCREATE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"\0AStop.\00", align 1
@UPTODATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"`%s' is up to date.\0A\00", align 1
@ABORTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"`%s' not remade because of errors.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Compat_Run(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %5 = load i32, i32* @shellName, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @Shell_Init()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @SIGINT, align 4
  %11 = load i64, i64* @SIG_IGN, align 8
  %12 = call i64 @bmake_signal(i32 %10, i64 %11)
  %13 = load i64, i64* @SIG_IGN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load i64, i64* @CompatInterrupt, align 8
  %18 = call i64 @bmake_signal(i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* @SIGTERM, align 4
  %21 = load i64, i64* @SIG_IGN, align 8
  %22 = call i64 @bmake_signal(i32 %20, i64 %21)
  %23 = load i64, i64* @SIG_IGN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @SIGTERM, align 4
  %27 = load i64, i64* @CompatInterrupt, align 8
  %28 = call i64 @bmake_signal(i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* @SIGHUP, align 4
  %31 = load i64, i64* @SIG_IGN, align 8
  %32 = call i64 @bmake_signal(i32 %30, i64 %31)
  %33 = load i64, i64* @SIG_IGN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @SIGHUP, align 4
  %37 = load i64, i64* @CompatInterrupt, align 8
  %38 = call i64 @bmake_signal(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* @SIGQUIT, align 4
  %41 = load i64, i64* @SIG_IGN, align 8
  %42 = call i64 @bmake_signal(i32 %40, i64 %41)
  %43 = load i64, i64* @SIG_IGN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @SIGQUIT, align 4
  %47 = load i64, i64* @CompatInterrupt, align 8
  %48 = call i64 @bmake_signal(i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* @TARG_CREATE, align 4
  %51 = call %struct.TYPE_7__* @Targ_FindNode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** @ENDNode, align 8
  %52 = load i32, i32* @OP_SPECIAL, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ENDNode, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @queryFlag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @TARG_NOCREATE, align 4
  %59 = call %struct.TYPE_7__* @Targ_FindNode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %3, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = call i32 @Compat_Make(%struct.TYPE_7__* %63, %struct.TYPE_7__* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = call i32 @PrintOnError(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %49
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @Make_ExpandUse(i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %116, %77
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @Lst_IsEmpty(i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %117

85:                                               ; preds = %80
  %86 = load i32, i32* %2, align 4
  %87 = call i64 @Lst_DeQueue(i32 %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %3, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = call i32 @Compat_Make(%struct.TYPE_7__* %89, %struct.TYPE_7__* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UPTODATE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  br label %116

102:                                              ; preds = %85
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ABORTED, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %108, %102
  br label %116

116:                                              ; preds = %115, %97
  br label %80

117:                                              ; preds = %80
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ENDNode, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ENDNode, align 8
  %123 = call i32 @Compat_Make(%struct.TYPE_7__* %121, %struct.TYPE_7__* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ERROR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = call i32 @PrintOnError(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %132 = call i32 @exit(i32 1) #3
  unreachable

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %117
  ret void
}

declare dso_local i32 @Shell_Init(...) #1

declare dso_local i64 @bmake_signal(i32, i64) #1

declare dso_local %struct.TYPE_7__* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Compat_Make(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @PrintOnError(%struct.TYPE_7__*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @Make_ExpandUse(i32) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i64 @Lst_DeQueue(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
