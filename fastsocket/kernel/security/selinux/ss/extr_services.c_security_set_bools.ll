; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_set_bools.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_set_bools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.cond_node*, %struct.TYPE_9__**, i32*, %struct.TYPE_8__ }
%struct.cond_node = type { %struct.cond_node* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_MAC_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bool=%s val=%d old_val=%d auid=%u ses=%u\00", align 1
@latest_granting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_set_bools(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cond_node*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 @write_lock_irq(i32* @policy_rwlock)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 3, i32 0), align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %117

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %95, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 1), align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %32, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %23
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = load i32, i32* @AUDIT_MAC_CONFIG_CHANGE, align 4
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 2), align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 1), align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %61, i64 %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %69 = call i32 @audit_get_loginuid(%struct.TYPE_11__* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %71 = call i32 @audit_get_sessionid(%struct.TYPE_11__* %70)
  %72 = call i32 @audit_log(i32 %44, i32 %45, i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %60, i32 %67, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %41, %23
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 1), align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %94

87:                                               ; preds = %73
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 1), align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %88, i64 %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %80
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %19

98:                                               ; preds = %19
  %99 = load %struct.cond_node*, %struct.cond_node** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 0), align 8
  store %struct.cond_node* %99, %struct.cond_node** %9, align 8
  br label %100

100:                                              ; preds = %110, %98
  %101 = load %struct.cond_node*, %struct.cond_node** %9, align 8
  %102 = icmp ne %struct.cond_node* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load %struct.cond_node*, %struct.cond_node** %9, align 8
  %105 = call i32 @evaluate_cond_node(%struct.TYPE_10__* @policydb, %struct.cond_node* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %117

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.cond_node*, %struct.cond_node** %9, align 8
  %112 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %111, i32 0, i32 0
  %113 = load %struct.cond_node*, %struct.cond_node** %112, align 8
  store %struct.cond_node* %113, %struct.cond_node** %9, align 8
  br label %100

114:                                              ; preds = %100
  %115 = load i32, i32* @latest_granting, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @latest_granting, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %108, %15
  %118 = call i32 @write_unlock_irq(i32* @policy_rwlock)
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @avc_ss_reset(i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @selnl_notify_policyload(i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @selinux_status_update_policyload(i32 %126)
  %128 = call i32 (...) @selinux_xfrm_notify_policyload()
  br label %129

129:                                              ; preds = %121, %117
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @audit_log(i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audit_get_loginuid(%struct.TYPE_11__*) #1

declare dso_local i32 @audit_get_sessionid(%struct.TYPE_11__*) #1

declare dso_local i32 @evaluate_cond_node(%struct.TYPE_10__*, %struct.cond_node*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @avc_ss_reset(i32) #1

declare dso_local i32 @selnl_notify_policyload(i32) #1

declare dso_local i32 @selinux_status_update_policyload(i32) #1

declare dso_local i32 @selinux_xfrm_notify_policyload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
