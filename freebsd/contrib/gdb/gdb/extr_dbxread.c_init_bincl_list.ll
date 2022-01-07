; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_init_bincl_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_init_bincl_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header_file_location = type { i32 }
%struct.objfile = type { i32 }

@bincls_allocated = common dso_local global i32 0, align 4
@bincl_list = common dso_local global %struct.header_file_location* null, align 8
@next_bincl = common dso_local global %struct.header_file_location* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.objfile*)* @init_bincl_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bincl_list(i32 %0, %struct.objfile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.objfile*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @bincls_allocated, align 4
  %6 = load %struct.objfile*, %struct.objfile** %4, align 8
  %7 = getelementptr inbounds %struct.objfile, %struct.objfile* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @bincls_allocated, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i64 @xmmalloc(i32 %8, i32 %12)
  %14 = inttoptr i64 %13 to %struct.header_file_location*
  store %struct.header_file_location* %14, %struct.header_file_location** @bincl_list, align 8
  store %struct.header_file_location* %14, %struct.header_file_location** @next_bincl, align 8
  ret void
}

declare dso_local i64 @xmmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
