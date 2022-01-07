; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota.c_xqm_quotactl_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota.c_xqm_quotactl_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@XQM_MAXQUOTAS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@XQM_USRQUOTA = common dso_local global i32 0, align 4
@XQM_GRPQUOTA = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i64)* @xqm_quotactl_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xqm_quotactl_valid(%struct.super_block* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @XQM_MAXQUOTAS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %133

16:                                               ; preds = %4
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = icmp ne %struct.super_block* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %133

22:                                               ; preds = %16
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %133

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %87 [
    i32 131, label %32
    i32 132, label %32
    i32 130, label %32
    i32 134, label %43
    i32 128, label %54
    i32 133, label %65
    i32 129, label %76
  ]

32:                                               ; preds = %30, %30, %30
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %133

42:                                               ; preds = %32
  br label %90

43:                                               ; preds = %30
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %133

53:                                               ; preds = %43
  br label %90

54:                                               ; preds = %30
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %133

64:                                               ; preds = %54
  br label %90

65:                                               ; preds = %30
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOSYS, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %133

75:                                               ; preds = %65
  br label %90

76:                                               ; preds = %30
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOSYS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %133

86:                                               ; preds = %76
  br label %90

87:                                               ; preds = %30
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %133

90:                                               ; preds = %86, %75, %64, %53, %42
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 133
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @XQM_USRQUOTA, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = call i64 (...) @current_euid()
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @XQM_GRPQUOTA, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @in_egroup_p(i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105, %97
  %110 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %111 = call i32 @capable(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @EPERM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %133

116:                                              ; preds = %109, %105, %101
  br label %132

117:                                              ; preds = %90
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 134
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 129
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %125 = call i32 @capable(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @EPERM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %133

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %120, %117
  br label %132

132:                                              ; preds = %131, %116
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %127, %113, %87, %83, %72, %61, %50, %39, %27, %19, %13
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @current_euid(...) #1

declare dso_local i32 @in_egroup_p(i64) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
