; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota.c_generic_quotactl_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota.c_generic_quotactl_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i64)* @generic_quotactl_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_quotactl_valid(%struct.super_block* %0, i32 %1, i32 %2, i64 %3) #0 {
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
  %11 = load i32, i32* @MAXQUOTAS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %179

16:                                               ; preds = %4
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = icmp ne %struct.super_block* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %179

25:                                               ; preds = %19, %16
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = icmp ne %struct.super_block* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %179

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %119 [
    i32 135, label %38
    i32 131, label %39
    i32 132, label %50
    i32 130, label %61
    i32 134, label %72
    i32 129, label %83
    i32 133, label %94
    i32 128, label %105
  ]

38:                                               ; preds = %36
  br label %122

39:                                               ; preds = %36
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %179

49:                                               ; preds = %39
  br label %122

50:                                               ; preds = %36
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOSYS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %179

60:                                               ; preds = %50
  br label %122

61:                                               ; preds = %36
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOSYS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %179

71:                                               ; preds = %61
  br label %122

72:                                               ; preds = %36
  %73 = load %struct.super_block*, %struct.super_block** %6, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOSYS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %179

82:                                               ; preds = %72
  br label %122

83:                                               ; preds = %36
  %84 = load %struct.super_block*, %struct.super_block** %6, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @ENOSYS, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %179

93:                                               ; preds = %83
  br label %122

94:                                               ; preds = %36
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @ENOSYS, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %179

104:                                              ; preds = %94
  br label %122

105:                                              ; preds = %36
  %106 = load %struct.super_block*, %struct.super_block** %6, align 8
  %107 = icmp ne %struct.super_block* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @ENOSYS, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %179

118:                                              ; preds = %108, %105
  br label %122

119:                                              ; preds = %36
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %179

122:                                              ; preds = %118, %104, %93, %82, %71, %60, %49, %38
  %123 = load i32, i32* %8, align 4
  switch i32 %123, label %133 [
    i32 135, label %124
    i32 134, label %124
    i32 130, label %124
    i32 129, label %124
    i32 133, label %124
  ]

124:                                              ; preds = %122, %122, %122, %122, %122
  %125 = load %struct.super_block*, %struct.super_block** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @sb_has_quota_active(%struct.super_block* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @ESRCH, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %179

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %122
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 133
  br i1 %135, label %136, label %160

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @USRQUOTA, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = call i64 (...) @current_euid()
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %140, %136
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @GRPQUOTA, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @in_egroup_p(i64 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %148, %140
  %153 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %154 = call i32 @capable(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* @EPERM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %179

159:                                              ; preds = %152, %148, %144
  br label %178

160:                                              ; preds = %133
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 135
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 128
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 134
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %171 = call i32 @capable(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* @EPERM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %179

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %166, %163, %160
  br label %178

178:                                              ; preds = %177, %159
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %173, %156, %129, %119, %115, %101, %90, %79, %68, %57, %46, %33, %22, %13
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i64 @current_euid(...) #1

declare dso_local i32 @in_egroup_p(i64) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
