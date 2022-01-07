; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_traced.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_traced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@msgport = common dso_local global i32 0, align 4
@refport = common dso_local global i32 0, align 4
@INIT_TRACEMASK = common dso_local global i32 0, align 4
@EIEIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Can't modify tracing state for pid %d: %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No signal thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_set_traced(%struct.inf* %0, i32 %1) #0 {
  %3 = alloca %struct.inf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.inf* %0, %struct.inf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.inf*, %struct.inf** %3, align 8
  %9 = getelementptr inbounds %struct.inf, %struct.inf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.inf*, %struct.inf** %3, align 8
  %15 = getelementptr inbounds %struct.inf, %struct.inf* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %13
  %19 = load %struct.inf*, %struct.inf** %3, align 8
  %20 = getelementptr inbounds %struct.inf, %struct.inf* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 -1, i32 0
  store i32 %29, i32* %5, align 4
  %30 = load %struct.inf*, %struct.inf** %3, align 8
  %31 = load i32, i32* @msgport, align 4
  %32 = load i32, i32* @refport, align 4
  %33 = load i32, i32* @INIT_TRACEMASK, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @msg_set_init_int(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = call i64 @INF_RESUME_MSGPORT_RPC(%struct.inf* %30, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @EIEIO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.inf*, %struct.inf** %3, align 8
  %45 = getelementptr inbounds %struct.inf, %struct.inf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.inf*, %struct.inf** %3, align 8
  %51 = getelementptr inbounds %struct.inf, %struct.inf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %67

52:                                               ; preds = %25
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.inf*, %struct.inf** %3, align 8
  %57 = getelementptr inbounds %struct.inf, %struct.inf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i8* @safe_strerror(i64 %59)
  %61 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %60)
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.inf*, %struct.inf** %3, align 8
  %65 = getelementptr inbounds %struct.inf, %struct.inf* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %55
  br label %67

67:                                               ; preds = %66, %48
  br label %72

68:                                               ; preds = %18, %13
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.inf*, %struct.inf** %3, align 8
  %71 = getelementptr inbounds %struct.inf, %struct.inf* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %12, %68, %67
  ret void
}

declare dso_local i64 @INF_RESUME_MSGPORT_RPC(%struct.inf*, i32) #1

declare dso_local i32 @msg_set_init_int(i32, i32, i32, i32) #1

declare dso_local i32 @warning(i8*, i32, i8*) #1

declare dso_local i8* @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
