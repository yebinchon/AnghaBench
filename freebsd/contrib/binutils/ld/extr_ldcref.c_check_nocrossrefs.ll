; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_check_nocrossrefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_check_nocrossrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cref_initialized = common dso_local global i32 0, align 4
@cref_table = common dso_local global i32 0, align 4
@check_nocrossref = common dso_local global i32 0, align 4
@check_local_sym_xref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_nocrossrefs() #0 {
  %1 = load i32, i32* @cref_initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @check_nocrossref, align 4
  %6 = call i32 @cref_hash_traverse(i32* @cref_table, i32 %5, i32* null)
  %7 = load i32, i32* @check_local_sym_xref, align 4
  %8 = call i32 @lang_for_each_file(i32 %7)
  br label %9

9:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @cref_hash_traverse(i32*, i32, i32*) #1

declare dso_local i32 @lang_for_each_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
