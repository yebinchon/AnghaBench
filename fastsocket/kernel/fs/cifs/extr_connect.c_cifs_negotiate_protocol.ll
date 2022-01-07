; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_negotiate_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_negotiate_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@CifsGood = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_negotiate_protocol(i32 %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %8, i32 0, i32 0
  %10 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  store %struct.TCP_Server_Info* %10, %struct.TCP_Server_Info** %7, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %18 = call i32 @cifs_set_credits(%struct.TCP_Server_Info* %17, i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %21 = call i32 @CIFSSMBNegotiate(i32 %19, %struct.cifs_ses* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %28 = call i32 @cifs_set_credits(%struct.TCP_Server_Info* %27, i32 1)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %31 = call i32 @CIFSSMBNegotiate(i32 %29, %struct.cifs_ses* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EHOSTDOWN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %26
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CifsNeedNegotiate, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i64, i64* @CifsGood, align 8
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EHOSTDOWN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %59

59:                                               ; preds = %57, %40
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @cifs_set_credits(%struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @CIFSSMBNegotiate(i32, %struct.cifs_ses*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
