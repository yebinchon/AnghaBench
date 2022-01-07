; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_sslio.c_run_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_sslio.c_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@run_command.slot = internal global %struct.TYPE_4__ zeroinitializer, align 8
@run_command.slot_used = internal global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"closing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"renegotiating...\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"not renegotiating.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"forgetting session...\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"saving session parameters...\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"  id = \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"restoring session parameters...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @run_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_command(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %120

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 13
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  store i32 0, i32* %4, align 4
  br label %120

31:                                               ; preds = %24, %15
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %120

41:                                               ; preds = %34, %31
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  switch i32 %45, label %119 [
    i32 81, label %46
    i32 82, label %51
    i32 70, label %62
    i32 83, label %67
    i32 80, label %91
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @br_ssl_engine_close(i32* %49)
  store i32 1, i32* %4, align 4
  br label %120

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @br_ssl_engine_renegotiate(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  store i32 1, i32* %4, align 4
  br label %120

62:                                               ; preds = %41
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @br_ssl_client_forget_session(i32* %65)
  store i32 1, i32* %4, align 4
  br label %120

67:                                               ; preds = %41
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @br_ssl_engine_get_session_parameters(i32* %70, %struct.TYPE_4__* @run_command.slot)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %74

74:                                               ; preds = %85, %67
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @run_command.slot, i32 0, i32 0), align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @run_command.slot, i32 0, i32 1), align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %74

88:                                               ; preds = %74
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* @run_command.slot_used, align 4
  store i32 1, i32* %4, align 4
  br label %120

91:                                               ; preds = %41
  %92 = load i32, i32* @run_command.slot_used, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %99

99:                                               ; preds = %110, %94
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @run_command.slot, i32 0, i32 0), align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @run_command.slot, i32 0, i32 1), align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %99

113:                                              ; preds = %99
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @br_ssl_engine_set_session_parameters(i32* %116, %struct.TYPE_4__* @run_command.slot)
  store i32 1, i32* %4, align 4
  br label %120

118:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %120

119:                                              ; preds = %41
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %118, %113, %88, %62, %61, %46, %40, %30, %14
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @br_ssl_engine_close(i32*) #1

declare dso_local i32 @br_ssl_engine_renegotiate(i32*) #1

declare dso_local i32 @br_ssl_client_forget_session(i32*) #1

declare dso_local i32 @br_ssl_engine_get_session_parameters(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @br_ssl_engine_set_session_parameters(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
