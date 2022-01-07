; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_end_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_end_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.symtab = type { i32 }

@current_source_start_addr = common dso_local global i32 0, align 4
@last_source_start_addr = common dso_local global i32 0, align 4
@current_source_end_addr = common dso_local global i32 0, align 4
@last_source_file = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @coff_end_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_end_symtab(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.symtab*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %4 = load i32, i32* @current_source_start_addr, align 4
  store i32 %4, i32* @last_source_start_addr, align 4
  %5 = load i32, i32* @current_source_end_addr, align 4
  %6 = load %struct.objfile*, %struct.objfile** %2, align 8
  %7 = load %struct.objfile*, %struct.objfile** %2, align 8
  %8 = call i32 @SECT_OFF_TEXT(%struct.objfile* %7)
  %9 = call %struct.symtab* @end_symtab(i32 %5, %struct.objfile* %6, i32 %8)
  store %struct.symtab* %9, %struct.symtab** %3, align 8
  %10 = load %struct.symtab*, %struct.symtab** %3, align 8
  %11 = icmp ne %struct.symtab* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.symtab*, %struct.symtab** %3, align 8
  %14 = getelementptr inbounds %struct.symtab, %struct.symtab* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @free_named_symtabs(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  store i32* null, i32** @last_source_file, align 8
  ret void
}

declare dso_local %struct.symtab* @end_symtab(i32, %struct.objfile*, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @free_named_symtabs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
