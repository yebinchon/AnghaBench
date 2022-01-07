; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_init_cmd_lists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_init_cmd_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_user_call_depth = common dso_local global i32 0, align 4
@cmdlist = common dso_local global i32* null, align 8
@infolist = common dso_local global i32* null, align 8
@enablelist = common dso_local global i32* null, align 8
@disablelist = common dso_local global i32* null, align 8
@togglelist = common dso_local global i32* null, align 8
@stoplist = common dso_local global i32* null, align 8
@deletelist = common dso_local global i32* null, align 8
@enablebreaklist = common dso_local global i32* null, align 8
@setlist = common dso_local global i32* null, align 8
@unsetlist = common dso_local global i32* null, align 8
@showlist = common dso_local global i32* null, align 8
@sethistlist = common dso_local global i32* null, align 8
@showhistlist = common dso_local global i32* null, align 8
@unsethistlist = common dso_local global i32* null, align 8
@maintenancelist = common dso_local global i32* null, align 8
@maintenanceinfolist = common dso_local global i32* null, align 8
@maintenanceprintlist = common dso_local global i32* null, align 8
@setprintlist = common dso_local global i32* null, align 8
@showprintlist = common dso_local global i32* null, align 8
@setchecklist = common dso_local global i32* null, align 8
@showchecklist = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_cmd_lists() #0 {
  store i32 1024, i32* @max_user_call_depth, align 4
  store i32* null, i32** @cmdlist, align 8
  store i32* null, i32** @infolist, align 8
  store i32* null, i32** @enablelist, align 8
  store i32* null, i32** @disablelist, align 8
  store i32* null, i32** @togglelist, align 8
  store i32* null, i32** @stoplist, align 8
  store i32* null, i32** @deletelist, align 8
  store i32* null, i32** @enablebreaklist, align 8
  store i32* null, i32** @setlist, align 8
  store i32* null, i32** @unsetlist, align 8
  store i32* null, i32** @showlist, align 8
  store i32* null, i32** @sethistlist, align 8
  store i32* null, i32** @showhistlist, align 8
  store i32* null, i32** @unsethistlist, align 8
  store i32* null, i32** @maintenancelist, align 8
  store i32* null, i32** @maintenanceinfolist, align 8
  store i32* null, i32** @maintenanceprintlist, align 8
  store i32* null, i32** @setprintlist, align 8
  store i32* null, i32** @showprintlist, align 8
  store i32* null, i32** @setchecklist, align 8
  store i32* null, i32** @showchecklist, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
