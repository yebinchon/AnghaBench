; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_handle_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_handle_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frag = type { i32, i32, i8*, i32, i32, %struct.frag*, i32 }

@ppc_cpu = common dso_local global i32 0, align 4
@PPC_OPCODE_POWER6 = common dso_local global i32 0, align 4
@SIZEOF_STRUCT_FRAG = common dso_local global i64 0, align 8
@rs_fill = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppc_handle_align(%struct.frag* %0) #0 {
  %2 = alloca %struct.frag*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.frag*, align 8
  store %struct.frag* %0, %struct.frag** %2, align 8
  %6 = load %struct.frag*, %struct.frag** %2, align 8
  %7 = getelementptr inbounds %struct.frag, %struct.frag* %6, i32 0, i32 5
  %8 = load %struct.frag*, %struct.frag** %7, align 8
  %9 = getelementptr inbounds %struct.frag, %struct.frag* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.frag*, %struct.frag** %2, align 8
  %12 = getelementptr inbounds %struct.frag, %struct.frag* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.frag*, %struct.frag** %2, align 8
  %15 = getelementptr inbounds %struct.frag, %struct.frag* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = sub nsw i32 %10, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = load %struct.frag*, %struct.frag** %2, align 8
  %27 = getelementptr inbounds %struct.frag, %struct.frag* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.frag*, %struct.frag** %2, align 8
  %30 = getelementptr inbounds %struct.frag, %struct.frag* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %4, align 8
  %34 = load %struct.frag*, %struct.frag** %2, align 8
  %35 = getelementptr inbounds %struct.frag, %struct.frag* %34, i32 0, i32 3
  store i32 4, i32* %35, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @md_number_to_chars(i8* %36, i32 1610612736, i32 4)
  %38 = load i32, i32* @ppc_cpu, align 4
  %39 = load i32, i32* @PPC_OPCODE_POWER6, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %25
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load i64, i64* @SIZEOF_STRUCT_FRAG, align 8
  %47 = add nsw i64 %46, 4
  %48 = call %struct.frag* @xmalloc(i64 %47)
  store %struct.frag* %48, %struct.frag** %5, align 8
  %49 = load %struct.frag*, %struct.frag** %5, align 8
  %50 = load %struct.frag*, %struct.frag** %2, align 8
  %51 = load i64, i64* @SIZEOF_STRUCT_FRAG, align 8
  %52 = call i32 @memcpy(%struct.frag* %49, %struct.frag* %50, i64 %51)
  %53 = load %struct.frag*, %struct.frag** %5, align 8
  %54 = getelementptr inbounds %struct.frag, %struct.frag* %53, i32 0, i32 5
  %55 = load %struct.frag*, %struct.frag** %54, align 8
  %56 = getelementptr inbounds %struct.frag, %struct.frag* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 4
  %59 = load %struct.frag*, %struct.frag** %5, align 8
  %60 = getelementptr inbounds %struct.frag, %struct.frag* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.frag*, %struct.frag** %5, align 8
  %62 = getelementptr inbounds %struct.frag, %struct.frag* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.frag*, %struct.frag** %5, align 8
  %64 = getelementptr inbounds %struct.frag, %struct.frag* %63, i32 0, i32 4
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @rs_fill, align 4
  %66 = load %struct.frag*, %struct.frag** %5, align 8
  %67 = getelementptr inbounds %struct.frag, %struct.frag* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.frag*, %struct.frag** %5, align 8
  %69 = load %struct.frag*, %struct.frag** %2, align 8
  %70 = getelementptr inbounds %struct.frag, %struct.frag* %69, i32 0, i32 5
  store %struct.frag* %68, %struct.frag** %70, align 8
  %71 = load %struct.frag*, %struct.frag** %5, align 8
  %72 = getelementptr inbounds %struct.frag, %struct.frag* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %45, %42
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @md_number_to_chars(i8* %75, i32 1612775424, i32 4)
  br label %77

77:                                               ; preds = %74, %25
  br label %78

78:                                               ; preds = %77, %21, %1
  ret void
}

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local %struct.frag* @xmalloc(i64) #1

declare dso_local i32 @memcpy(%struct.frag*, %struct.frag*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
