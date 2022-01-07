; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c__initialize_dcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c__initialize_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"remotecache\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@dcache_enabled_p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [371 x i8] c"Set cache use for remote targets.\0AWhen on, use data caching for remote targets.  For many remote targets\0Athis option can offer better throughput for reading target memory.\0AUnfortunately, gdb does not currently know anything about volatile\0Aregisters and thus data caching will produce incorrect results with\0Avolatile registers are in use.  By default, this option is off.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"dcache\00", align 1
@dcache_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Print information on the dcache performance.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_dcache() #0 {
  %1 = load i32, i32* @class_support, align 4
  %2 = load i32, i32* @var_boolean, align 4
  %3 = call i32 @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* bitcast (i32* @dcache_enabled_p to i8*), i8* getelementptr inbounds ([371 x i8], [371 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %4 = call i32 @add_show_from_set(i32 %3, i32* @showlist)
  %5 = load i32, i32* @dcache_info, align 4
  %6 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
