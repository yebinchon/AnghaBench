; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_record_exported_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_record_exported_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.export_list = type { i8*, i32, %struct.export_list* }

@export_head = common dso_local global %struct.export_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_pe_record_exported_symbol(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.export_list*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @ggc_alloc(i32 24)
  %7 = inttoptr i64 %6 to %struct.export_list*
  store %struct.export_list* %7, %struct.export_list** %5, align 8
  %8 = load %struct.export_list*, %struct.export_list** @export_head, align 8
  %9 = load %struct.export_list*, %struct.export_list** %5, align 8
  %10 = getelementptr inbounds %struct.export_list, %struct.export_list* %9, i32 0, i32 2
  store %struct.export_list* %8, %struct.export_list** %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.export_list*, %struct.export_list** %5, align 8
  %13 = getelementptr inbounds %struct.export_list, %struct.export_list* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.export_list*, %struct.export_list** %5, align 8
  %16 = getelementptr inbounds %struct.export_list, %struct.export_list* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.export_list*, %struct.export_list** %5, align 8
  store %struct.export_list* %17, %struct.export_list** @export_head, align 8
  ret void
}

declare dso_local i64 @ggc_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
