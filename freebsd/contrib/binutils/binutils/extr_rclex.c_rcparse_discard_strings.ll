; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rcparse_discard_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rcparse_discard_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_string = type { %struct.alloc_string*, %struct.alloc_string* }

@strings = common dso_local global %struct.alloc_string* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcparse_discard_strings() #0 {
  %1 = alloca %struct.alloc_string*, align 8
  %2 = alloca %struct.alloc_string*, align 8
  %3 = load %struct.alloc_string*, %struct.alloc_string** @strings, align 8
  store %struct.alloc_string* %3, %struct.alloc_string** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.alloc_string*, %struct.alloc_string** %1, align 8
  %6 = icmp ne %struct.alloc_string* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.alloc_string*, %struct.alloc_string** %1, align 8
  %9 = getelementptr inbounds %struct.alloc_string, %struct.alloc_string* %8, i32 0, i32 1
  %10 = load %struct.alloc_string*, %struct.alloc_string** %9, align 8
  %11 = call i32 @free(%struct.alloc_string* %10)
  %12 = load %struct.alloc_string*, %struct.alloc_string** %1, align 8
  %13 = getelementptr inbounds %struct.alloc_string, %struct.alloc_string* %12, i32 0, i32 0
  %14 = load %struct.alloc_string*, %struct.alloc_string** %13, align 8
  store %struct.alloc_string* %14, %struct.alloc_string** %2, align 8
  %15 = load %struct.alloc_string*, %struct.alloc_string** %1, align 8
  %16 = call i32 @free(%struct.alloc_string* %15)
  %17 = load %struct.alloc_string*, %struct.alloc_string** %2, align 8
  store %struct.alloc_string* %17, %struct.alloc_string** %1, align 8
  br label %4

18:                                               ; preds = %4
  store %struct.alloc_string* null, %struct.alloc_string** @strings, align 8
  ret void
}

declare dso_local i32 @free(%struct.alloc_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
