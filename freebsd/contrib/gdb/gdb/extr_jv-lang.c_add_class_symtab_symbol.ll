; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_add_class_symtab_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_add_class_symtab_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.symtab = type { i32 }
%struct.blockvector = type { i32 }

@GLOBAL_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @add_class_symtab_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_class_symtab_symbol(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca %struct.blockvector*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %5 = call %struct.symtab* (...) @get_java_class_symtab()
  store %struct.symtab* %5, %struct.symtab** %3, align 8
  %6 = load %struct.symtab*, %struct.symtab** %3, align 8
  %7 = call %struct.blockvector* @BLOCKVECTOR(%struct.symtab* %6)
  store %struct.blockvector* %7, %struct.blockvector** %4, align 8
  %8 = load %struct.blockvector*, %struct.blockvector** %4, align 8
  %9 = load i32, i32* @GLOBAL_BLOCK, align 4
  %10 = call i32 @BLOCKVECTOR_BLOCK(%struct.blockvector* %8, i32 %9)
  %11 = call i32 @BLOCK_DICT(i32 %10)
  %12 = load %struct.symbol*, %struct.symbol** %2, align 8
  %13 = call i32 @dict_add_symbol(i32 %11, %struct.symbol* %12)
  ret void
}

declare dso_local %struct.symtab* @get_java_class_symtab(...) #1

declare dso_local %struct.blockvector* @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local i32 @dict_add_symbol(i32, %struct.symbol*) #1

declare dso_local i32 @BLOCK_DICT(i32) #1

declare dso_local i32 @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
