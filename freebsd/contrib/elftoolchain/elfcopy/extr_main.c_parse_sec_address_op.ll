; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_parse_sec_address_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_parse_sec_address_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32 }
%struct.sec_action = type { i32, i32, i8*, i8*, i8*, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid format for %s\00", align 1
@ECP_CHANGE_SEC_LMA = common dso_local global i32 0, align 4
@ECP_CHANGE_SEC_ADDR = common dso_local global i32 0, align 4
@ECP_CHANGE_SEC_VMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i32, i8*, i8*)* @parse_sec_address_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sec_address_op(%struct.elfcopy* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.elfcopy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sec_action*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.elfcopy* %0, %struct.elfcopy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %11, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %37, %4
  %15 = load i8*, i8** %11, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %11, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i8*, i8** %11, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 61
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 43
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br label %37

37:                                               ; preds = %32, %27, %22, %17
  %38 = phi i1 [ false, %27 ], [ false, %22 ], [ false, %17 ], [ %36, %32 ]
  br i1 %38, label %14, label %39

39:                                               ; preds = %37
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @errx(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %12, align 1
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  store i8 0, i8* %57, align 1
  %59 = load %struct.elfcopy*, %struct.elfcopy** %5, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %59, i8* %60, i32 1)
  store %struct.sec_action* %61, %struct.sec_action** %9, align 8
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %163 [
    i32 61, label %64
    i32 43, label %99
    i32 45, label %130
  ]

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ECP_CHANGE_SEC_LMA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ECP_CHANGE_SEC_ADDR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68, %64
  %73 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %74 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @strtoull(i8* %75, i32* null, i32 0)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %80 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %72, %68
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ECP_CHANGE_SEC_VMA, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ECP_CHANGE_SEC_ADDR, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %81
  %90 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %91 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @strtoull(i8* %92, i32* null, i32 0)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %97 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %89, %85
  br label %164

99:                                               ; preds = %54
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ECP_CHANGE_SEC_LMA, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @ECP_CHANGE_SEC_ADDR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103, %99
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @strtoll(i8* %108, i32* null, i32 0)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %113 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @ECP_CHANGE_SEC_VMA, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @ECP_CHANGE_SEC_ADDR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118, %114
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @strtoll(i8* %123, i32* null, i32 0)
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %128 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %122, %118
  br label %164

130:                                              ; preds = %54
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @ECP_CHANGE_SEC_LMA, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @ECP_CHANGE_SEC_ADDR, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134, %130
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @strtoll(i8* %139, i32* null, i32 0)
  %141 = sub nsw i32 0, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %145 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %138, %134
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @ECP_CHANGE_SEC_VMA, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @ECP_CHANGE_SEC_ADDR, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150, %146
  %155 = load i8*, i8** %11, align 8
  %156 = call i32 @strtoll(i8* %155, i32* null, i32 0)
  %157 = sub nsw i32 0, %156
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.sec_action*, %struct.sec_action** %9, align 8
  %161 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %154, %150
  br label %164

163:                                              ; preds = %54
  br label %164

164:                                              ; preds = %163, %162, %129, %98
  ret void
}

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.sec_action* @lookup_sec_act(%struct.elfcopy*, i8*, i32) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
