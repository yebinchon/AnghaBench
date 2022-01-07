; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_restore_checkpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_restore_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_equiv_checkpoint = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.equiv_info = type { i32, %struct.TYPE_2__, i32*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.struct_equiv_checkpoint*, %struct.equiv_info*)* @struct_equiv_restore_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_equiv_restore_checkpoint(%struct.struct_equiv_checkpoint* %0, %struct.equiv_info* %1) #0 {
  %3 = alloca %struct.struct_equiv_checkpoint*, align 8
  %4 = alloca %struct.equiv_info*, align 8
  store %struct.struct_equiv_checkpoint* %0, %struct.struct_equiv_checkpoint** %3, align 8
  store %struct.equiv_info* %1, %struct.equiv_info** %4, align 8
  %5 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %6 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %9 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i32 %7, i32* %10, align 8
  %11 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %12 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %15 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  store i32 %13, i32* %16, align 4
  %17 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %18 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %21 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %24 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %27 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %30 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %33 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %102, %2
  %36 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %37 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %41 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %35
  %45 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %46 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %51 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %56 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %59 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %62 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REGNO(i32 %66)
  %68 = call i64 @REGNO_REG_SET_P(i32 %57, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %44
  %71 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %72 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %75 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %78 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @assign_reg_reg_set(i32 %73, i32 %82, i32 0)
  %84 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %85 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %88 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %91 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @assign_reg_reg_set(i32 %86, i32 %95, i32 0)
  %97 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %98 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %70, %44
  br label %35

103:                                              ; preds = %35
  %104 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %105 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %109 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %114 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %103
  ret void
}

declare dso_local i64 @REGNO_REG_SET_P(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @assign_reg_reg_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
