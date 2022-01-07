; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_netif_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_netif_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.ocontext*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OCON_NETIF = common dso_local global i64 0, align 8
@sidtab = common dso_local global i32 0, align 4
@SECINITSID_NETIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_netif_sid(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocontext*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @read_lock(i32* @policy_rwlock)
  %8 = load %struct.ocontext**, %struct.ocontext*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @policydb, i32 0, i32 0), align 8
  %9 = load i64, i64* @OCON_NETIF, align 8
  %10 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %8, i64 %9
  %11 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  store %struct.ocontext* %11, %struct.ocontext** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %14 = icmp ne %struct.ocontext* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %18 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i8* %16, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %26 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %25, i32 0, i32 2
  %27 = load %struct.ocontext*, %struct.ocontext** %26, align 8
  store %struct.ocontext* %27, %struct.ocontext** %6, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %30 = icmp ne %struct.ocontext* %29, null
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %33 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %40 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %47 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %51 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = call i32 @sidtab_context_to_sid(i32* @sidtab, i32* %49, i64* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %83

58:                                               ; preds = %45
  %59 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %60 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %64 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = call i32 @sidtab_context_to_sid(i32* @sidtab, i32* %62, i64* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %83

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.ocontext*, %struct.ocontext** %6, align 8
  %74 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %4, align 8
  store i64 %77, i64* %78, align 8
  br label %82

79:                                               ; preds = %28
  %80 = load i64, i64* @SECINITSID_NETIF, align 8
  %81 = load i64*, i64** %4, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %70, %57
  %84 = call i32 @read_unlock(i32* @policy_rwlock)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(i32*, i32*, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
