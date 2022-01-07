; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_set_primary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_set_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.sctp_transport*, i32, %struct.sctp_transport* }
%struct.sctp_transport = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SCTP_ACTIVE = common dso_local global i64 0, align 8
@SCTP_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_assoc_set_primary(%struct.sctp_association* %0, %struct.sctp_transport* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %10 = icmp ne %struct.sctp_transport* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %17 = icmp ne %struct.sctp_transport* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %11, %2
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store %struct.sctp_transport* %20, %struct.sctp_transport** %23, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %27, i32 0, i32 2
  %29 = call i32 @memcpy(i32* %26, i32* %28, i32 4)
  %30 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCTP_ACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %19
  %36 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %37 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SCTP_UNKNOWN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35, %19
  %42 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.sctp_transport* %42, %struct.sctp_transport** %45, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %48 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %54 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %81

59:                                               ; preds = %52, %46
  %60 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %61 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %68 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %73 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %76 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %70, %58
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
