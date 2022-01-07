; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_selinux_audit_rule_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_selinux_audit_rule_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.selinux_audit_rule = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.role_datum = type { i32 }
%struct.type_datum = type { i32 }
%struct.user_datum = type { i32 }

@ss_initialized = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@Audit_equal = common dso_local global i32 0, align 4
@Audit_not_equal = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@policy_rwlock = common dso_local global i32 0, align 4
@latest_granting = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_audit_rule_init(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.selinux_audit_rule*, align 8
  %11 = alloca %struct.role_datum*, align 8
  %12 = alloca %struct.type_datum*, align 8
  %13 = alloca %struct.user_datum*, align 8
  %14 = alloca %struct.selinux_audit_rule**, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = bitcast i8** %16 to %struct.selinux_audit_rule**
  store %struct.selinux_audit_rule** %17, %struct.selinux_audit_rule*** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.selinux_audit_rule**, %struct.selinux_audit_rule*** %14, align 8
  store %struct.selinux_audit_rule* null, %struct.selinux_audit_rule** %18, align 8
  %19 = load i32, i32* @ss_initialized, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %137

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %46 [
    i32 128, label %26
    i32 131, label %26
    i32 129, label %26
    i32 133, label %26
    i32 135, label %26
    i32 134, label %26
    i32 130, label %38
    i32 132, label %38
    i32 136, label %38
    i32 137, label %38
  ]

26:                                               ; preds = %24, %24, %24, %24, %24, %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @Audit_equal, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @Audit_not_equal, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %137

37:                                               ; preds = %30, %26
  br label %49

38:                                               ; preds = %24, %24, %24, %24
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strchr(i8* %39, i8 signext 45)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %137

45:                                               ; preds = %38
  br label %49

46:                                               ; preds = %24
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %137

49:                                               ; preds = %45, %37
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.selinux_audit_rule* @kzalloc(i32 16, i32 %50)
  store %struct.selinux_audit_rule* %51, %struct.selinux_audit_rule** %10, align 8
  %52 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %53 = icmp ne %struct.selinux_audit_rule* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %137

57:                                               ; preds = %49
  %58 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %59 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %58, i32 0, i32 0
  %60 = call i32 @context_init(%struct.TYPE_11__* %59)
  %61 = call i32 @read_lock(i32* @policy_rwlock)
  %62 = load i32, i32* @latest_granting, align 4
  %63 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %64 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  switch i32 %65, label %126 [
    i32 128, label %66
    i32 133, label %66
    i32 131, label %84
    i32 135, label %84
    i32 129, label %102
    i32 134, label %102
    i32 130, label %120
    i32 132, label %120
    i32 136, label %120
    i32 137, label %120
  ]

66:                                               ; preds = %57, %57
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 2, i32 0), align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @hashtab_search(i32 %67, i8* %68)
  %70 = bitcast i8* %69 to %struct.user_datum*
  store %struct.user_datum* %70, %struct.user_datum** %13, align 8
  %71 = load %struct.user_datum*, %struct.user_datum** %13, align 8
  %72 = icmp ne %struct.user_datum* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %15, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load %struct.user_datum*, %struct.user_datum** %13, align 8
  %78 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %81 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %73
  br label %126

84:                                               ; preds = %57, %57
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 1, i32 0), align 4
  %86 = load i8*, i8** %8, align 8
  %87 = call i8* @hashtab_search(i32 %85, i8* %86)
  %88 = bitcast i8* %87 to %struct.role_datum*
  store %struct.role_datum* %88, %struct.role_datum** %11, align 8
  %89 = load %struct.role_datum*, %struct.role_datum** %11, align 8
  %90 = icmp ne %struct.role_datum* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %101

94:                                               ; preds = %84
  %95 = load %struct.role_datum*, %struct.role_datum** %11, align 8
  %96 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %99 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %91
  br label %126

102:                                              ; preds = %57, %57
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @policydb, i32 0, i32 0, i32 0), align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i8* @hashtab_search(i32 %103, i8* %104)
  %106 = bitcast i8* %105 to %struct.type_datum*
  store %struct.type_datum* %106, %struct.type_datum** %12, align 8
  %107 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %108 = icmp ne %struct.type_datum* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %15, align 4
  br label %119

112:                                              ; preds = %102
  %113 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %114 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %117 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %109
  br label %126

120:                                              ; preds = %57, %57, %57, %57
  %121 = load i8*, i8** %8, align 8
  %122 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %123 = getelementptr inbounds %struct.selinux_audit_rule, %struct.selinux_audit_rule* %122, i32 0, i32 0
  %124 = load i32, i32* @GFP_ATOMIC, align 4
  %125 = call i32 @mls_from_string(i8* %121, %struct.TYPE_11__* %123, i32 %124)
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %57, %120, %119, %101, %83
  %127 = call i32 @read_unlock(i32* @policy_rwlock)
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %132 = call i32 @selinux_audit_rule_free(%struct.selinux_audit_rule* %131)
  store %struct.selinux_audit_rule* null, %struct.selinux_audit_rule** %10, align 8
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.selinux_audit_rule*, %struct.selinux_audit_rule** %10, align 8
  %135 = load %struct.selinux_audit_rule**, %struct.selinux_audit_rule*** %14, align 8
  store %struct.selinux_audit_rule* %134, %struct.selinux_audit_rule** %135, align 8
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %54, %46, %42, %34, %21
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local %struct.selinux_audit_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @context_init(%struct.TYPE_11__*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i8* @hashtab_search(i32, i8*) #1

declare dso_local i32 @mls_from_string(i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @selinux_audit_rule_free(%struct.selinux_audit_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
