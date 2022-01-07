; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_delete_cmd_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_delete_cmd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblentry = type { %struct.tblentry* }

@INTOFF = common dso_local global i32 0, align 4
@lastcmdentry = common dso_local global %struct.tblentry** null, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_cmd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_cmd_entry() #0 {
  %1 = alloca %struct.tblentry*, align 8
  %2 = load i32, i32* @INTOFF, align 4
  %3 = load %struct.tblentry**, %struct.tblentry*** @lastcmdentry, align 8
  %4 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  store %struct.tblentry* %4, %struct.tblentry** %1, align 8
  %5 = load %struct.tblentry*, %struct.tblentry** %1, align 8
  %6 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %5, i32 0, i32 0
  %7 = load %struct.tblentry*, %struct.tblentry** %6, align 8
  %8 = load %struct.tblentry**, %struct.tblentry*** @lastcmdentry, align 8
  store %struct.tblentry* %7, %struct.tblentry** %8, align 8
  %9 = load %struct.tblentry*, %struct.tblentry** %1, align 8
  %10 = call i32 @ckfree(%struct.tblentry* %9)
  %11 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @ckfree(%struct.tblentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
