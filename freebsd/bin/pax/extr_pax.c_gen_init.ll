; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pax.c_gen_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pax.c_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.sigaction = type { i32, i64, i32 }

@RLIMIT_DATA = common dso_local global i32 0, align 4
@RLIMIT_FSIZE = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@RLIMIT_RSS = common dso_local global i32 0, align 4
@s_mask = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to set up signal mask\00", align 1
@sig_cleanup = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to set up signal handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rlimit, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = load i32, i32* @RLIMIT_DATA, align 4
  %5 = call i64 @getrlimit(i32 %4, %struct.rlimit* %2)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @RLIMIT_DATA, align 4
  %12 = call i32 @setrlimit(i32 %11, %struct.rlimit* %2)
  br label %13

13:                                               ; preds = %7, %0
  %14 = load i32, i32* @RLIMIT_FSIZE, align 4
  %15 = call i64 @getrlimit(i32 %14, %struct.rlimit* %2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @RLIMIT_FSIZE, align 4
  %22 = call i32 @setrlimit(i32 %21, %struct.rlimit* %2)
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32, i32* @RLIMIT_STACK, align 4
  %25 = call i64 @getrlimit(i32 %24, %struct.rlimit* %2)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @RLIMIT_STACK, align 4
  %32 = call i32 @setrlimit(i32 %31, %struct.rlimit* %2)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @RLIMIT_RSS, align 4
  %35 = call i64 @getrlimit(i32 %34, %struct.rlimit* %2)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @RLIMIT_RSS, align 4
  %42 = call i32 @setrlimit(i32 %41, %struct.rlimit* %2)
  br label %43

43:                                               ; preds = %37, %33
  %44 = call i64 @sigemptyset(i32* @s_mask)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @SIGTERM, align 4
  %48 = call i64 @sigaddset(i32* @s_mask, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @SIGINT, align 4
  %52 = call i64 @sigaddset(i32* @s_mask, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @SIGHUP, align 4
  %56 = call i64 @sigaddset(i32* @s_mask, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @SIGPIPE, align 4
  %60 = call i64 @sigaddset(i32* @s_mask, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @SIGQUIT, align 4
  %64 = call i64 @sigaddset(i32* @s_mask, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @SIGXCPU, align 4
  %68 = call i64 @sigaddset(i32* @s_mask, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @SIGXFSZ, align 4
  %72 = call i64 @sigaddset(i32* @s_mask, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66, %62, %58, %54, %50, %46, %43
  %75 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %118

76:                                               ; preds = %70
  %77 = call i32 @memset(%struct.sigaction* %3, i32 0, i32 24)
  %78 = load i32, i32* @s_mask, align 4
  %79 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @sig_cleanup, align 4
  %82 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* @SIGHUP, align 4
  %84 = call i64 @setup_sig(i32 %83, %struct.sigaction* %3)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @SIGTERM, align 4
  %88 = call i64 @setup_sig(i32 %87, %struct.sigaction* %3)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @SIGINT, align 4
  %92 = call i64 @setup_sig(i32 %91, %struct.sigaction* %3)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @SIGQUIT, align 4
  %96 = call i64 @setup_sig(i32 %95, %struct.sigaction* %3)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @SIGXCPU, align 4
  %100 = call i64 @setup_sig(i32 %99, %struct.sigaction* %3)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %94, %90, %86, %76
  br label %115

103:                                              ; preds = %98
  %104 = load i32, i32* @SIG_IGN, align 4
  %105 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* @SIGPIPE, align 4
  %107 = call i64 @sigaction(i32 %106, %struct.sigaction* %3, i32* null)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @SIGXFSZ, align 4
  %111 = call i64 @sigaction(i32 %110, %struct.sigaction* %3, i32* null)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %103
  br label %115

114:                                              ; preds = %109
  store i32 0, i32* %1, align 4
  br label %118

115:                                              ; preds = %113, %102
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @syswarn(i32 1, i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %118

118:                                              ; preds = %115, %114, %74
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i64 @setup_sig(i32, %struct.sigaction*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @syswarn(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
