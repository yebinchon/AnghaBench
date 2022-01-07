; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_xcoff_stringtab_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_xcoff_stringtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_strtab_hash* @_bfd_xcoff_stringtab_init() #0 {
  %1 = alloca %struct.bfd_strtab_hash*, align 8
  %2 = call %struct.bfd_strtab_hash* (...) @_bfd_stringtab_init()
  store %struct.bfd_strtab_hash* %2, %struct.bfd_strtab_hash** %1, align 8
  %3 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  %4 = icmp ne %struct.bfd_strtab_hash* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @TRUE, align 4
  %7 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  %8 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  ret %struct.bfd_strtab_hash* %10
}

declare dso_local %struct.bfd_strtab_hash* @_bfd_stringtab_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
