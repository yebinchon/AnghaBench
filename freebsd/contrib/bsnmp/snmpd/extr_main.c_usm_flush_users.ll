; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_usm_flush_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_usm_flush_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usm_user = type { i32 }

@usm_userlist = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usm_flush_users() #0 {
  %1 = alloca %struct.usm_user*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.usm_user* @SLIST_FIRST(i32* @usm_userlist)
  store %struct.usm_user* %3, %struct.usm_user** %1, align 8
  %4 = icmp ne %struct.usm_user* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load i32, i32* @up, align 4
  %7 = call i32 @SLIST_REMOVE_HEAD(i32* @usm_userlist, i32 %6)
  %8 = load %struct.usm_user*, %struct.usm_user** %1, align 8
  %9 = call i32 @free(%struct.usm_user* %8)
  br label %2

10:                                               ; preds = %2
  %11 = call i32 @SLIST_INIT(i32* @usm_userlist)
  ret void
}

declare dso_local %struct.usm_user* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.usm_user*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
