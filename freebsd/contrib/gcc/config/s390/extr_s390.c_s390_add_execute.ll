; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_add_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_add_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, %struct.constant* }
%struct.constant = type { %struct.constant*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_pool*, i32)* @s390_add_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_add_execute(%struct.constant_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.constant_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.constant*, align 8
  store %struct.constant_pool* %0, %struct.constant_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %7 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %6, i32 0, i32 1
  %8 = load %struct.constant*, %struct.constant** %7, align 8
  store %struct.constant* %8, %struct.constant** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.constant*, %struct.constant** %5, align 8
  %11 = icmp ne %struct.constant* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @INSN_UID(i32 %13)
  %15 = load %struct.constant*, %struct.constant** %5, align 8
  %16 = getelementptr inbounds %struct.constant, %struct.constant* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @INSN_UID(i32 %17)
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %26

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.constant*, %struct.constant** %5, align 8
  %24 = getelementptr inbounds %struct.constant, %struct.constant* %23, i32 0, i32 0
  %25 = load %struct.constant*, %struct.constant** %24, align 8
  store %struct.constant* %25, %struct.constant** %5, align 8
  br label %9

26:                                               ; preds = %20, %9
  %27 = load %struct.constant*, %struct.constant** %5, align 8
  %28 = icmp eq %struct.constant* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = call i64 @xmalloc(i32 16)
  %31 = inttoptr i64 %30 to %struct.constant*
  store %struct.constant* %31, %struct.constant** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.constant*, %struct.constant** %5, align 8
  %34 = getelementptr inbounds %struct.constant, %struct.constant* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @gen_label_rtx()
  %36 = load %struct.constant*, %struct.constant** %5, align 8
  %37 = getelementptr inbounds %struct.constant, %struct.constant* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %39 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %38, i32 0, i32 1
  %40 = load %struct.constant*, %struct.constant** %39, align 8
  %41 = load %struct.constant*, %struct.constant** %5, align 8
  %42 = getelementptr inbounds %struct.constant, %struct.constant* %41, i32 0, i32 0
  store %struct.constant* %40, %struct.constant** %42, align 8
  %43 = load %struct.constant*, %struct.constant** %5, align 8
  %44 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %45 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %44, i32 0, i32 1
  store %struct.constant* %43, %struct.constant** %45, align 8
  %46 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %47 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 6
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %29, %26
  ret void
}

declare dso_local i64 @INSN_UID(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
