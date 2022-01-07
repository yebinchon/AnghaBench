; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_complaints.c__initialize_complaints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_complaints.c__initialize_complaints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"complaints\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@stop_whining = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Set max number of complaints about incorrect symbols.\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Show max number of complaints about incorrect symbols.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_complaints() #0 {
  %1 = load i32, i32* @class_support, align 4
  %2 = load i32, i32* @var_zinteger, align 4
  %3 = call i32 @add_setshow_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32* @stop_whining, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* @setlist, i32* @showlist)
  ret void
}

declare dso_local i32 @add_setshow_cmd(i8*, i32, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
