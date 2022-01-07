; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_valid_src_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_valid_src_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_blit_req = type { i32, i32, i32, i32 }
%struct.mdp_regs = type { i64, i32, i64, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid_src %x %x %lx %lx\0A\00", align 1
@PPP_SRC_PLANE_PSEUDOPLNR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid_src1\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"invalid_dst\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"invalid_dst1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, %struct.mdp_blit_req*, %struct.mdp_regs*)* @valid_src_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_src_dst(i64 %0, i64 %1, i64 %2, i64 %3, %struct.mdp_blit_req* %4, %struct.mdp_regs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mdp_blit_req*, align 8
  %13 = alloca %struct.mdp_regs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.mdp_blit_req* %4, %struct.mdp_blit_req** %12, align 8
  store %struct.mdp_regs* %5, %struct.mdp_regs** %13, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %17, align 8
  %30 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %12, align 8
  %31 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %30, i32 0, i32 3
  %32 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %12, align 8
  %33 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %32, i32 0, i32 2
  %34 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %35 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_len(i32* %31, i32* %33, i32 %36, i64* %18, i64* %19)
  %38 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %12, align 8
  %39 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %38, i32 0, i32 1
  %40 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %12, align 8
  %41 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %40, i32 0, i32 0
  %42 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %43 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_len(i32* %39, i32* %41, i32 %44, i64* %20, i64* %21)
  %46 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %47 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %6
  %52 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %53 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %59 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %18, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %15, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57, %51, %6
  %66 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %67 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69, i64 %70, i64 %71)
  store i32 0, i32* %7, align 4
  br label %156

73:                                               ; preds = %57
  %74 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %75 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PPP_SRC_PLANE_PSEUDOPLNR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %73
  %81 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %82 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %80
  %87 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %88 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %94 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %95, %96
  %98 = load i64, i64* %15, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92, %86, %80
  %101 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %156

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %73
  %104 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %105 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %16, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %111 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %17, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %117 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %20, align 8
  %120 = add i64 %118, %119
  %121 = load i64, i64* %17, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115, %109, %103
  %124 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %156

125:                                              ; preds = %115
  %126 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %127 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PPP_SRC_PLANE_PSEUDOPLNR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %125
  %133 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %134 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %152, label %138

138:                                              ; preds = %132
  %139 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %140 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %17, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %138
  %145 = load %struct.mdp_regs*, %struct.mdp_regs** %13, align 8
  %146 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %21, align 8
  %149 = add i64 %147, %148
  %150 = load i64, i64* %17, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144, %138, %132
  %153 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %156

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %125
  store i32 1, i32* %7, align 4
  br label %156

156:                                              ; preds = %155, %152, %123, %100, %65
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32 @get_len(i32*, i32*, i32, i64*, i64*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
