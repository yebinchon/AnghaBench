; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_delete_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_vacm_delete_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_user = type { %struct.vacm_user*, i32 }

@vacm_default_group = common dso_local global %struct.vacm_user zeroinitializer, align 8
@vacm_user = common dso_local global i32 0, align 4
@vvg = common dso_local global i32 0, align 4
@vacm_grouplist = common dso_local global i32 0, align 4
@vacm_group = common dso_local global i32 0, align 4
@vge = common dso_local global i32 0, align 4
@vacm_userlist = common dso_local global i32 0, align 4
@vvu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vacm_delete_user(%struct.vacm_user* %0) #0 {
  %2 = alloca %struct.vacm_user*, align 8
  store %struct.vacm_user* %0, %struct.vacm_user** %2, align 8
  %3 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %4 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %3, i32 0, i32 0
  %5 = load %struct.vacm_user*, %struct.vacm_user** %4, align 8
  %6 = icmp ne %struct.vacm_user* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %9 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %8, i32 0, i32 0
  %10 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %11 = icmp ne %struct.vacm_user* %10, @vacm_default_group
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %14 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %13, i32 0, i32 0
  %15 = load %struct.vacm_user*, %struct.vacm_user** %14, align 8
  %16 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %15, i32 0, i32 1
  %17 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %18 = load i32, i32* @vacm_user, align 4
  %19 = load i32, i32* @vvg, align 4
  %20 = call i32 @SLIST_REMOVE(i32* %16, %struct.vacm_user* %17, i32 %18, i32 %19)
  %21 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %22 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %21, i32 0, i32 0
  %23 = load %struct.vacm_user*, %struct.vacm_user** %22, align 8
  %24 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %23, i32 0, i32 1
  %25 = call i64 @SLIST_EMPTY(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %12
  %28 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %29 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %28, i32 0, i32 0
  %30 = load %struct.vacm_user*, %struct.vacm_user** %29, align 8
  %31 = load i32, i32* @vacm_group, align 4
  %32 = load i32, i32* @vge, align 4
  %33 = call i32 @SLIST_REMOVE(i32* @vacm_grouplist, %struct.vacm_user* %30, i32 %31, i32 %32)
  %34 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %35 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %34, i32 0, i32 0
  %36 = load %struct.vacm_user*, %struct.vacm_user** %35, align 8
  %37 = call i32 @free(%struct.vacm_user* %36)
  br label %38

38:                                               ; preds = %27, %12
  br label %39

39:                                               ; preds = %38, %7, %1
  %40 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %41 = load i32, i32* @vacm_user, align 4
  %42 = load i32, i32* @vvu, align 4
  %43 = call i32 @SLIST_REMOVE(i32* @vacm_userlist, %struct.vacm_user* %40, i32 %41, i32 %42)
  %44 = load %struct.vacm_user*, %struct.vacm_user** %2, align 8
  %45 = call i32 @free(%struct.vacm_user* %44)
  ret i32 0
}

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.vacm_user*, i32, i32) #1

declare dso_local i64 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @free(%struct.vacm_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
