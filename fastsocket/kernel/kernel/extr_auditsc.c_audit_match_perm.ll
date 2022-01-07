; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_match_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_match_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32, i32*, i32 }

@AUDIT_PERM_WRITE = common dso_local global i32 0, align 4
@AUDIT_CLASS_WRITE = common dso_local global i32 0, align 4
@AUDIT_PERM_READ = common dso_local global i32 0, align 4
@AUDIT_CLASS_READ = common dso_local global i32 0, align 4
@AUDIT_PERM_ATTR = common dso_local global i32 0, align 4
@AUDIT_CLASS_CHATTR = common dso_local global i32 0, align 4
@AUDIT_CLASS_WRITE_32 = common dso_local global i32 0, align 4
@AUDIT_CLASS_READ_32 = common dso_local global i32 0, align 4
@AUDIT_CLASS_CHATTR_32 = common dso_local global i32 0, align 4
@SYS_BIND = common dso_local global i32 0, align 4
@AUDIT_PERM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_context*, i32)* @audit_match_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_match_perm(%struct.audit_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %8 = icmp ne %struct.audit_context* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

14:                                               ; preds = %2
  %15 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %16 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %19 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @audit_classify_syscall(i32 %20, i32 %21)
  switch i32 %22, label %129 [
    i32 0, label %23
    i32 1, label %57
    i32 2, label %91
    i32 3, label %100
    i32 4, label %109
    i32 5, label %125
  ]

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AUDIT_PERM_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @AUDIT_CLASS_WRITE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @audit_match_class(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %130

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @AUDIT_PERM_READ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @AUDIT_CLASS_READ, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @audit_match_class(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %130

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @AUDIT_PERM_ATTR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @AUDIT_CLASS_CHATTR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @audit_match_class(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %130

56:                                               ; preds = %50, %45
  store i32 0, i32* %3, align 4
  br label %130

57:                                               ; preds = %14
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @AUDIT_PERM_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @AUDIT_CLASS_WRITE_32, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @audit_match_class(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %130

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @AUDIT_PERM_READ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @AUDIT_CLASS_READ_32, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @audit_match_class(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %130

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @AUDIT_PERM_ATTR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @AUDIT_CLASS_CHATTR_32, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @audit_match_class(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %130

90:                                               ; preds = %84, %79
  store i32 0, i32* %3, align 4
  br label %130

91:                                               ; preds = %14
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %94 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ACC_MODE(i32 %97)
  %99 = and i32 %92, %98
  store i32 %99, i32* %3, align 4
  br label %130

100:                                              ; preds = %14
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %103 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ACC_MODE(i32 %106)
  %108 = and i32 %101, %107
  store i32 %108, i32* %3, align 4
  br label %130

109:                                              ; preds = %14
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @AUDIT_PERM_WRITE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %116 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SYS_BIND, align 4
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %114, %109
  %123 = phi i1 [ false, %109 ], [ %121, %114 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %3, align 4
  br label %130

125:                                              ; preds = %14
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @AUDIT_PERM_EXEC, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %3, align 4
  br label %130

129:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %125, %122, %100, %91, %90, %89, %78, %67, %56, %55, %44, %33, %13
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_classify_syscall(i32, i32) #1

declare dso_local i32 @audit_match_class(i32, i32) #1

declare dso_local i32 @ACC_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
