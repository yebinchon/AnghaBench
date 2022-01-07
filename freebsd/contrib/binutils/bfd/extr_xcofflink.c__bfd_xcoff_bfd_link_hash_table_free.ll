; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_bfd_link_hash_table_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_bfd_link_hash_table_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.xcoff_link_hash_table = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_xcoff_bfd_link_hash_table_free(%struct.bfd_link_hash_table* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca %struct.xcoff_link_hash_table*, align 8
  store %struct.bfd_link_hash_table* %0, %struct.bfd_link_hash_table** %2, align 8
  %4 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  %5 = bitcast %struct.bfd_link_hash_table* %4 to %struct.xcoff_link_hash_table*
  store %struct.xcoff_link_hash_table* %5, %struct.xcoff_link_hash_table** %3, align 8
  %6 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %3, align 8
  %7 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @_bfd_stringtab_free(i32 %8)
  %10 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %3, align 8
  %11 = getelementptr inbounds %struct.xcoff_link_hash_table, %struct.xcoff_link_hash_table* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @bfd_hash_table_free(i32* %12)
  %14 = load %struct.xcoff_link_hash_table*, %struct.xcoff_link_hash_table** %3, align 8
  %15 = call i32 @free(%struct.xcoff_link_hash_table* %14)
  ret void
}

declare dso_local i32 @_bfd_stringtab_free(i32) #1

declare dso_local i32 @bfd_hash_table_free(i32*) #1

declare dso_local i32 @free(%struct.xcoff_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
