; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_print_type_hash_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_print_type_hash_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Type hash: size %ld, %ld elements, %f collisions\0A\00", align 1
@type_hash_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_type_hash_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_type_hash_statistics() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @type_hash_table, align 4
  %3 = call i64 @htab_size(i32 %2)
  %4 = load i32, i32* @type_hash_table, align 4
  %5 = call i64 @htab_elements(i32 %4)
  %6 = load i32, i32* @type_hash_table, align 4
  %7 = call i32 @htab_collisions(i32 %6)
  %8 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %3, i64 %5, i32 %7)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32) #1

declare dso_local i64 @htab_size(i32) #1

declare dso_local i64 @htab_elements(i32) #1

declare dso_local i32 @htab_collisions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
