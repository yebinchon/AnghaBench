; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_emit_dynrel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_emit_dynrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bfd_link_info*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i64, i64, i32)* @elf64_alpha_emit_dynrel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf64_alpha_emit_dynrel(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bfd_link_info*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BFD_ASSERT(i32 %21)
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i32 @ELF64_R_INFO(i64 %23, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %16, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @_bfd_elf_section_offset(i32* %29, %struct.bfd_link_info* %30, %struct.TYPE_10__* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, 1
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %51

37:                                               ; preds = %8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  br label %53

51:                                               ; preds = %8
  %52 = call i32 @memset(%struct.TYPE_11__* %17, i32 0, i32 24)
  br label %53

53:                                               ; preds = %51, %37
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %18, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = mul i64 %61, 4
  %63 = load i32*, i32** %18, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %18, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @bfd_elf64_swap_reloca_out(i32* %65, %struct.TYPE_11__* %17, i32* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ule i64 %72, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @BFD_ASSERT(i32 %78)
  ret void
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @ELF64_R_INFO(i64, i64) #1

declare dso_local i32 @_bfd_elf_section_offset(i32*, %struct.bfd_link_info*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @bfd_elf64_swap_reloca_out(i32*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
