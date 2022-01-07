; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_generate_disassembler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_generate_disassembler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.main_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@bittree = common dso_local global i32 0, align 4
@otlen = common dso_local global i32 0, align 4
@ordered_table = common dso_local global %struct.main_entry** null, align 8
@IA64_TYPE_DYN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @generate_disassembler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_disassembler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.main_entry*, align 8
  %3 = call i32 (...) @make_bittree_entry()
  store i32 %3, i32* @bittree, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @otlen, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = load %struct.main_entry**, %struct.main_entry*** @ordered_table, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.main_entry*, %struct.main_entry** %9, i64 %11
  %13 = load %struct.main_entry*, %struct.main_entry** %12, align 8
  store %struct.main_entry* %13, %struct.main_entry** %2, align 8
  %14 = load %struct.main_entry*, %struct.main_entry** %2, align 8
  %15 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IA64_TYPE_DYN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %8
  %22 = load i32, i32* @bittree, align 4
  %23 = load %struct.main_entry*, %struct.main_entry** %2, align 8
  %24 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.main_entry*, %struct.main_entry** %2, align 8
  %29 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.main_entry*, %struct.main_entry** %2, align 8
  %34 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.main_entry*, %struct.main_entry** %2, align 8
  %37 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @add_dis_entry(i32 %22, i32 %27, i32 %32, i32 %35, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %21, %8
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %4

44:                                               ; preds = %4
  %45 = load i32, i32* @bittree, align 4
  %46 = call i32 @compact_distree(i32 %45)
  %47 = call i32 (...) @finish_distable()
  %48 = load i32, i32* @bittree, align 4
  %49 = call i32 @gen_dis_table(i32 %48)
  %50 = call i32 (...) @print_dis_table()
  ret void
}

declare dso_local i32 @make_bittree_entry(...) #1

declare dso_local i32 @add_dis_entry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @compact_distree(i32) #1

declare dso_local i32 @finish_distable(...) #1

declare dso_local i32 @gen_dis_table(i32) #1

declare dso_local i32 @print_dis_table(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
