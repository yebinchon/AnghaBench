; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_update_alloc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_update_alloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_ext_type = type { i32, i32, i32, i32, i32 }

@NF_CT_EXT_NUM = common dso_local global i32 0, align 4
@NF_CT_EXT_F_PREALLOC = common dso_local global i32 0, align 4
@nf_ct_ext_types = common dso_local global %struct.nf_ct_ext_type** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_ct_ext_type*)* @update_alloc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_alloc_size(%struct.nf_ct_ext_type* %0) #0 {
  %2 = alloca %struct.nf_ct_ext_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_ct_ext_type*, align 8
  %6 = alloca %struct.nf_ct_ext_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nf_ct_ext_type* %0, %struct.nf_ct_ext_type** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @NF_CT_EXT_NUM, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %12 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NF_CT_EXT_F_PREALLOC, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %19 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %22 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %96, %24
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  %31 = load %struct.nf_ct_ext_type**, %struct.nf_ct_ext_type*** @nf_ct_ext_types, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %31, i64 %33
  %35 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %34, align 8
  store %struct.nf_ct_ext_type* %35, %struct.nf_ct_ext_type** %5, align 8
  %36 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %37 = icmp ne %struct.nf_ct_ext_type* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %96

39:                                               ; preds = %30
  %40 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %41 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ALIGN(i32 4, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %47 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %45, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %53 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %92, %39
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @NF_CT_EXT_NUM, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %54
  %59 = load %struct.nf_ct_ext_type**, %struct.nf_ct_ext_type*** @nf_ct_ext_types, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %59, i64 %61
  %63 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %62, align 8
  store %struct.nf_ct_ext_type* %63, %struct.nf_ct_ext_type** %6, align 8
  %64 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %6, align 8
  %65 = icmp eq %struct.nf_ct_ext_type* %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %58
  %67 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %6, align 8
  %68 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %69 = icmp eq %struct.nf_ct_ext_type* %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %6, align 8
  %72 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NF_CT_EXT_F_PREALLOC, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %66, %58
  br label %92

78:                                               ; preds = %70
  %79 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %80 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %6, align 8
  %83 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ALIGN(i32 %81, i32 %84)
  %86 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %6, align 8
  %87 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %5, align 8
  %91 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %78, %77
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %54

95:                                               ; preds = %54
  br label %96

96:                                               ; preds = %95, %38
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %26

99:                                               ; preds = %26
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
