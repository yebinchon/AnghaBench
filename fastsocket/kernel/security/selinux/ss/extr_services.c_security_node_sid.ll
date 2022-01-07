; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_node_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_node_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.ocontext** }
%struct.ocontext = type { i32*, i32*, %struct.ocontext*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@policy_rwlock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@OCON_NODE = common dso_local global i64 0, align 8
@OCON_NODE6 = common dso_local global i64 0, align 8
@SECINITSID_NODE = common dso_local global i32 0, align 4
@sidtab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_node_sid(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocontext*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 @read_lock(i32* @policy_rwlock)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %87 [
    i32 129, label %14
    i32 128, label %52
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %125

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ocontext**, %struct.ocontext*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @policydb, i32 0, i32 0), align 8
  %26 = load i64, i64* @OCON_NODE, align 8
  %27 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %25, i64 %26
  %28 = load %struct.ocontext*, %struct.ocontext** %27, align 8
  store %struct.ocontext* %28, %struct.ocontext** %10, align 8
  br label %29

29:                                               ; preds = %47, %21
  %30 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %31 = icmp ne %struct.ocontext* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %34 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %40 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %38, %43
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %51

47:                                               ; preds = %32
  %48 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %49 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %48, i32 0, i32 2
  %50 = load %struct.ocontext*, %struct.ocontext** %49, align 8
  store %struct.ocontext* %50, %struct.ocontext** %10, align 8
  br label %29

51:                                               ; preds = %46, %29
  br label %90

52:                                               ; preds = %4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 8
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %125

59:                                               ; preds = %52
  %60 = load %struct.ocontext**, %struct.ocontext*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @policydb, i32 0, i32 0), align 8
  %61 = load i64, i64* @OCON_NODE6, align 8
  %62 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %60, i64 %61
  %63 = load %struct.ocontext*, %struct.ocontext** %62, align 8
  store %struct.ocontext* %63, %struct.ocontext** %10, align 8
  br label %64

64:                                               ; preds = %82, %59
  %65 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %66 = icmp ne %struct.ocontext* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %70 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %75 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @match_ipv6_addrmask(i8* %68, i32 %73, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %86

82:                                               ; preds = %67
  %83 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %84 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %83, i32 0, i32 2
  %85 = load %struct.ocontext*, %struct.ocontext** %84, align 8
  store %struct.ocontext* %85, %struct.ocontext** %10, align 8
  br label %64

86:                                               ; preds = %81, %64
  br label %90

87:                                               ; preds = %4
  %88 = load i32, i32* @SECINITSID_NODE, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %125

90:                                               ; preds = %86, %51
  %91 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %92 = icmp ne %struct.ocontext* %91, null
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %95 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %93
  %101 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %102 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %106 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @sidtab_context_to_sid(i32* @sidtab, i32* %104, i32* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %125

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %93
  %115 = load %struct.ocontext*, %struct.ocontext** %10, align 8
  %116 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  br label %124

121:                                              ; preds = %90
  %122 = load i32, i32* @SECINITSID_NODE, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124, %112, %87, %56, %18
  %126 = call i32 @read_unlock(i32* @policy_rwlock)
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @match_ipv6_addrmask(i8*, i32, i32) #1

declare dso_local i32 @sidtab_context_to_sid(i32*, i32*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
