; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_toc_hash_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_toc_hash_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toc_hash_struct = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @toc_hash_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toc_hash_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.toc_hash_struct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.toc_hash_struct*
  store %struct.toc_hash_struct* %5, %struct.toc_hash_struct** %3, align 8
  %6 = load %struct.toc_hash_struct*, %struct.toc_hash_struct** %3, align 8
  %7 = getelementptr inbounds %struct.toc_hash_struct, %struct.toc_hash_struct* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rs6000_hash_constant(i32 %8)
  %10 = load %struct.toc_hash_struct*, %struct.toc_hash_struct** %3, align 8
  %11 = getelementptr inbounds %struct.toc_hash_struct, %struct.toc_hash_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %9, %12
  ret i32 %13
}

declare dso_local i32 @rs6000_hash_constant(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
