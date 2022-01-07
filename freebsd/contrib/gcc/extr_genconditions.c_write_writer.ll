; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_write_writer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_write_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [586 x i8] c"int\0Amain(void)\0A{\0A  unsigned int i;\0A  const char *p;\0A  puts (\22(define_conditions [\22);\0A#if GCC_VERSION >= 3001\0A  for (i = 0; i < ARRAY_SIZE (insn_conditions); i++)\0A    {\0A      printf (\22  (%d \\\22\22, insn_conditions[i].value);\0A      for (p = insn_conditions[i].expr; *p; p++)\0A        {\0A          switch (*p)\0A\09     {\0A\09     case '\\\\':\0A\09     case '\\\22': putchar ('\\\\'); break;\0A\09     default: break;\0A\09     }\0A          putchar (*p);\0A        }\0A      puts (\22\\\22)\22);\0A    }\0A#endif /* gcc >= 3.0.1 */\0A  puts (\22])\22);\0A  fflush (stdout);\0Areturn ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE;\0A}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_writer() #0 {
  %1 = call i32 @puts(i8* getelementptr inbounds ([586 x i8], [586 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
