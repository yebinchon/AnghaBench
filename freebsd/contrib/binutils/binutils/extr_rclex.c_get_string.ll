; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_get_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_string = type { i8*, %struct.alloc_string* }

@strings = common dso_local global %struct.alloc_string* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alloc_string*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @xmalloc(i32 16)
  %5 = bitcast i8* %4 to %struct.alloc_string*
  store %struct.alloc_string* %5, %struct.alloc_string** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @xmalloc(i32 %6)
  %8 = load %struct.alloc_string*, %struct.alloc_string** %3, align 8
  %9 = getelementptr inbounds %struct.alloc_string, %struct.alloc_string* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.alloc_string*, %struct.alloc_string** @strings, align 8
  %11 = load %struct.alloc_string*, %struct.alloc_string** %3, align 8
  %12 = getelementptr inbounds %struct.alloc_string, %struct.alloc_string* %11, i32 0, i32 1
  store %struct.alloc_string* %10, %struct.alloc_string** %12, align 8
  %13 = load %struct.alloc_string*, %struct.alloc_string** %3, align 8
  store %struct.alloc_string* %13, %struct.alloc_string** @strings, align 8
  %14 = load %struct.alloc_string*, %struct.alloc_string** %3, align 8
  %15 = getelementptr inbounds %struct.alloc_string, %struct.alloc_string* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  ret i8* %16
}

declare dso_local i8* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
