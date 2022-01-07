; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_flush_output_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_flush_output_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_final_link_info = type { i32, i32, i32 }
%struct.elf_backend_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_final_link_info*, %struct.elf_backend_data*)* @elf_link_flush_output_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_link_flush_output_syms(%struct.elf_final_link_info* %0, %struct.elf_backend_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_final_link_info*, align 8
  %5 = alloca %struct.elf_backend_data*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.elf_final_link_info* %0, %struct.elf_final_link_info** %4, align 8
  store %struct.elf_backend_data* %1, %struct.elf_backend_data** %5, align 8
  %9 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %10 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %2
  %14 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %15 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_6__* @elf_tdata(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %27 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.elf_backend_data*, %struct.elf_backend_data** %5, align 8
  %30 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %28, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %36 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = call i64 @bfd_seek(i32 %37, i64 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %13
  %43 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %44 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %48 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bfd_bwrite(i32 %45, i32 %46, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42, %13
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %4, align 8
  %63 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %2
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_6__* @elf_tdata(i32) #1

declare dso_local i64 @bfd_seek(i32, i64, i32) #1

declare dso_local i32 @bfd_bwrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
