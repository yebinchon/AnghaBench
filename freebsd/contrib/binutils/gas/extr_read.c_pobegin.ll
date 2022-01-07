; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_pobegin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_pobegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@po_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@pop_table_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@pop_override_ok = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@potable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pobegin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pobegin() #0 {
  %1 = call i32 (...) @hash_new()
  store i32 %1, i32* @po_hash, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @pop_table_name, align 8
  %2 = call i32 (...) @md_pop_insert()
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** @pop_table_name, align 8
  store i32 1, i32* @pop_override_ok, align 4
  %3 = call i32 (...) @obj_pop_insert()
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** @pop_table_name, align 8
  %4 = load i32, i32* @potable, align 4
  %5 = call i32 @pop_insert(i32 %4)
  ret void
}

declare dso_local i32 @hash_new(...) #1

declare dso_local i32 @md_pop_insert(...) #1

declare dso_local i32 @obj_pop_insert(...) #1

declare dso_local i32 @pop_insert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
