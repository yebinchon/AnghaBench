; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c__initialize_alpha_tdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c__initialize_alpha_tdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@bfd_arch_alpha = common dso_local global i32 0, align 4
@alpha_gdbarch_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"heuristic-fence-post\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@heuristic_fence_post = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [281 x i8] c"Set the distance searched for the start of a function.\0AIf you are debugging a stripped executable, GDB needs to search through the\0Aprogram for the start of a function.  This command sets the distance of the\0Asearch.  The only need to set it is when debugging a stripped executable.\00", align 1
@setlist = common dso_local global i32 0, align 4
@reinit_frame_cache_sfunc = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_alpha_tdep() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @bfd_arch_alpha, align 4
  %3 = load i32, i32* @alpha_gdbarch_init, align 4
  %4 = call i32 @gdbarch_register(i32 %2, i32 %3, i32* null)
  %5 = load i32, i32* @class_support, align 4
  %6 = load i32, i32* @var_zinteger, align 4
  %7 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* bitcast (i32* @heuristic_fence_post to i8*), i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %7, %struct.cmd_list_element** %1, align 8
  %8 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %9 = load i32, i32* @reinit_frame_cache_sfunc, align 4
  %10 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %8, i32 %9)
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %12 = call i32 @add_show_from_set(%struct.cmd_list_element* %11, i32* @showlist)
  ret void
}

declare dso_local i32 @gdbarch_register(i32, i32, i32*) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
