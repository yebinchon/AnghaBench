; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_add_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Adding mapping %u <%x> => %u <%x>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mapping(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @debug(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8, i64 %9, i64 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @alist_find(i32* %12, i8* %14, i32* null)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i1 [ false, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i64, i64* %6, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @alist_add(i32* %29, i8* %31, i8* %33)
  ret void
}

declare dso_local i32 @debug(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @alist_find(i32*, i8*, i32*) #1

declare dso_local i32 @alist_add(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
