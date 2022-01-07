; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_reader.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code_file = common dso_local global i32 0, align 4
@banner = common dso_local global i32 0, align 4
@destructor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reader() #0 {
  %1 = load i32, i32* @code_file, align 4
  %2 = load i32, i32* @banner, align 4
  %3 = call i32 @write_section(i32 %1, i32 %2)
  %4 = call i32 (...) @create_symbol_table()
  %5 = call i32 (...) @read_declarations()
  %6 = call i32 (...) @read_grammar()
  %7 = call i32 (...) @free_symbol_table()
  %8 = call i32 (...) @pack_names()
  %9 = call i32 (...) @check_symbols()
  %10 = call i32 (...) @pack_symbols()
  %11 = call i32 (...) @pack_grammar()
  %12 = call i32 (...) @free_symbols()
  %13 = call i32 (...) @print_grammar()
  %14 = call i32 (...) @free_tags()
  ret void
}

declare dso_local i32 @write_section(i32, i32) #1

declare dso_local i32 @create_symbol_table(...) #1

declare dso_local i32 @read_declarations(...) #1

declare dso_local i32 @read_grammar(...) #1

declare dso_local i32 @free_symbol_table(...) #1

declare dso_local i32 @pack_names(...) #1

declare dso_local i32 @check_symbols(...) #1

declare dso_local i32 @pack_symbols(...) #1

declare dso_local i32 @pack_grammar(...) #1

declare dso_local i32 @free_symbols(...) #1

declare dso_local i32 @print_grammar(...) #1

declare dso_local i32 @free_tags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
