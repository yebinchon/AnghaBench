; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_wait_for_free_credits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_wait_for_free_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, i32, i32 }

@CIFS_ASYNC_OP = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CIFS_BLOCKING_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, i32*)* @wait_for_free_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_free_credits(%struct.TCP_Server_Info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %10 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CIFS_ASYNC_OP, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  store i32 0, i32* %4, align 4
  br label %84

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %82
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %36 = call i32 @cifs_num_waiters_inc(%struct.TCP_Server_Info* %35)
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %38 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @has_credits(%struct.TCP_Server_Info* %40, i32* %41)
  %43 = call i32 @wait_event_killable(i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %45 = call i32 @cifs_num_waiters_dec(%struct.TCP_Server_Info* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %84

50:                                               ; preds = %31
  %51 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %52 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %51, i32 0, i32 1
  %53 = call i32 @spin_lock(i32* %52)
  br label %82

54:                                               ; preds = %27
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CifsExiting, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %62 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %84

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CIFS_BLOCKING_OP, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %75 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %66
  %79 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %80 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  br label %83

82:                                               ; preds = %50
  br label %27

83:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %60, %48, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_num_waiters_inc(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local i32 @has_credits(%struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @cifs_num_waiters_dec(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
