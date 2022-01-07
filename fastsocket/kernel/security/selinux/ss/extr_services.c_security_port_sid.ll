; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_port_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_port_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.ocontext*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@OCON_PORT = common dso_local global i64 0, align 8
@sidtab = common dso_local global i32 0, align 4
@SECINITSID_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_port_sid(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ocontext*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @read_lock(i32* @policy_rwlock)
  %10 = load %struct.ocontext**, %struct.ocontext*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @policydb, i32 0, i32 0), align 8
  %11 = load i64, i64* @OCON_PORT, align 8
  %12 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %10, i64 %11
  %13 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  store %struct.ocontext* %13, %struct.ocontext** %7, align 8
  br label %14

14:                                               ; preds = %42, %3
  %15 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %16 = icmp ne %struct.ocontext* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %19 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %27 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %35 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33, %25, %17
  %43 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %44 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %43, i32 0, i32 2
  %45 = load %struct.ocontext*, %struct.ocontext** %44, align 8
  store %struct.ocontext* %45, %struct.ocontext** %7, align 8
  br label %14

46:                                               ; preds = %41, %14
  %47 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %48 = icmp ne %struct.ocontext* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  %50 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %51 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %58 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %62 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = call i32 @sidtab_context_to_sid(i32* @sidtab, i32* %60, i64* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %81

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %49
  %71 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %72 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  br label %80

77:                                               ; preds = %46
  %78 = load i64, i64* @SECINITSID_PORT, align 8
  %79 = load i64*, i64** %6, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %68
  %82 = call i32 @read_unlock(i32* @policy_rwlock)
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @sidtab_context_to_sid(i32*, i32*, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
