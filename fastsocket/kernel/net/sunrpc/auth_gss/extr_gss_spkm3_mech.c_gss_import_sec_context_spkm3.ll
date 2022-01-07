; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_gss_import_sec_context_spkm3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_gss_import_sec_context_spkm3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.spkm3_ctx* }
%struct.spkm3_ctx = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.spkm3_ctx* }

@.str = private unnamed_addr constant [60 x i8] c"RPC:       unknown spkm3 token format: obsolete nfs-utils?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"RPC:       Successfully imported new spkm context.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.gss_ctx*, i32)* @gss_import_sec_context_spkm3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_import_sec_context_spkm3(i8* %0, i64 %1, %struct.gss_ctx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gss_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.spkm3_ctx*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.gss_ctx* %2, %struct.gss_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.spkm3_ctx* @kzalloc(i32 56, i32 %16)
  store %struct.spkm3_ctx* %17, %struct.spkm3_ctx** %11, align 8
  %18 = icmp ne %struct.spkm3_ctx* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %168

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i8* @simple_get_bytes(i8* %21, i8* %22, i32* %12, i32 4)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %165

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i8* @ERR_PTR(i32 %34)
  store i8* %35, i8** %6, align 8
  br label %165

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %40 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %39, i32 0, i32 2
  %41 = call i8* @simple_get_netobj(i8* %37, i8* %38, %struct.TYPE_2__* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %165

46:                                               ; preds = %36
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %50 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %49, i32 0, i32 0
  %51 = call i8* @simple_get_bytes(i8* %47, i8* %48, i32* %50, i32 4)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %159

56:                                               ; preds = %46
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %60 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %59, i32 0, i32 3
  %61 = call i8* @simple_get_netobj(i8* %57, i8* %58, %struct.TYPE_2__* %60)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %159

66:                                               ; preds = %56
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %70 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %69, i32 0, i32 1
  %71 = call i8* @simple_get_bytes(i8* %67, i8* %68, i32* %70, i32 4)
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %153

76:                                               ; preds = %66
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %80 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %79, i32 0, i32 4
  %81 = call i8* @simple_get_netobj(i8* %77, i8* %78, %struct.TYPE_2__* %80)
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %153

86:                                               ; preds = %76
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %90 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %89, i32 0, i32 5
  %91 = call i8* @simple_get_netobj(i8* %87, i8* %88, %struct.TYPE_2__* %90)
  store i8* %91, i8** %6, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %147

96:                                               ; preds = %86
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %100 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %99, i32 0, i32 6
  %101 = call i8* @simple_get_netobj(i8* %97, i8* %98, %struct.TYPE_2__* %100)
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %141

106:                                              ; preds = %96
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %110 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %109, i32 0, i32 7
  %111 = call i8* @simple_get_netobj(i8* %107, i8* %108, %struct.TYPE_2__* %110)
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %135

116:                                              ; preds = %106
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @EFAULT, align 4
  %122 = sub nsw i32 0, %121
  %123 = call i8* @ERR_PTR(i32 %122)
  store i8* %123, i8** %6, align 8
  br label %129

124:                                              ; preds = %116
  %125 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %126 = load %struct.gss_ctx*, %struct.gss_ctx** %8, align 8
  %127 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %126, i32 0, i32 0
  store %struct.spkm3_ctx* %125, %struct.spkm3_ctx** %127, align 8
  %128 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %171

129:                                              ; preds = %120
  %130 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %131 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %132, align 8
  %134 = call i32 @kfree(%struct.spkm3_ctx* %133)
  br label %135

135:                                              ; preds = %129, %115
  %136 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %137 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %138, align 8
  %140 = call i32 @kfree(%struct.spkm3_ctx* %139)
  br label %141

141:                                              ; preds = %135, %105
  %142 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %143 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %144, align 8
  %146 = call i32 @kfree(%struct.spkm3_ctx* %145)
  br label %147

147:                                              ; preds = %141, %95
  %148 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %149 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %150, align 8
  %152 = call i32 @kfree(%struct.spkm3_ctx* %151)
  br label %153

153:                                              ; preds = %147, %85, %75
  %154 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %155 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %156, align 8
  %158 = call i32 @kfree(%struct.spkm3_ctx* %157)
  br label %159

159:                                              ; preds = %153, %65, %55
  %160 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %161 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %162, align 8
  %164 = call i32 @kfree(%struct.spkm3_ctx* %163)
  br label %165

165:                                              ; preds = %159, %45, %31, %27
  %166 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %11, align 8
  %167 = call i32 @kfree(%struct.spkm3_ctx* %166)
  br label %168

168:                                              ; preds = %165, %19
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @PTR_ERR(i8* %169)
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %168, %124
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.spkm3_ctx* @kzalloc(i32, i32) #1

declare dso_local i8* @simple_get_bytes(i8*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @simple_get_netobj(i8*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.spkm3_ctx*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
