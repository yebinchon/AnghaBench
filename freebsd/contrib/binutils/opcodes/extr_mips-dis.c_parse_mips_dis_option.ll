; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_parse_mips_dis_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_parse_mips_dis_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_abi_choice = type { i32, i32 }
%struct.mips_arch_choice = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"octeon-useun\00", align 1
@octeon_use_unalign = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no-octeon-useun\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"no-aliases\00", align 1
@no_aliases = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"gpr-names\00", align 1
@mips_gpr_names = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"fpr-names\00", align 1
@mips_fpr_names = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"cp0-names\00", align 1
@mips_cp0_names = common dso_local global i32 0, align 4
@mips_cp0sel_names = common dso_local global i32 0, align 4
@mips_cp0sel_names_len = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"hwr-names\00", align 1
@mips_hwr_names = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @parse_mips_dis_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mips_dis_option(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mips_abi_choice*, align 8
  %10 = alloca %struct.mips_arch_choice*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* @octeon_use_unalign, align 4
  br label %196

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* @octeon_use_unalign, align 4
  br label %196

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @CONST_STRNEQ(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* @no_aliases, align 4
  br label %196

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 61
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %38, %26
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %196

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %196

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub i32 %54, 1
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %196

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  %68 = sub i32 %65, %67
  store i32 %68, i32* %7, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %58
  %74 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call %struct.mips_abi_choice* @choose_abi_by_name(i8* %78, i32 %79)
  store %struct.mips_abi_choice* %80, %struct.mips_abi_choice** %9, align 8
  %81 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %82 = icmp ne %struct.mips_abi_choice* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %85 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* @mips_gpr_names, align 4
  br label %87

87:                                               ; preds = %83, %77
  br label %196

88:                                               ; preds = %73, %58
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call %struct.mips_abi_choice* @choose_abi_by_name(i8* %98, i32 %99)
  store %struct.mips_abi_choice* %100, %struct.mips_abi_choice** %9, align 8
  %101 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %102 = icmp ne %struct.mips_abi_choice* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %105 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* @mips_fpr_names, align 4
  br label %107

107:                                              ; preds = %103, %97
  br label %196

108:                                              ; preds = %93, %88
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %109, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call %struct.mips_arch_choice* @choose_arch_by_name(i8* %118, i32 %119)
  store %struct.mips_arch_choice* %120, %struct.mips_arch_choice** %10, align 8
  %121 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %122 = icmp ne %struct.mips_arch_choice* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %125 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* @mips_cp0_names, align 4
  %127 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %128 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* @mips_cp0sel_names, align 4
  %130 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %131 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* @mips_cp0sel_names_len, align 4
  br label %133

133:                                              ; preds = %123, %117
  br label %196

134:                                              ; preds = %113, %108
  %135 = load i8*, i8** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %135, i32 %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call %struct.mips_arch_choice* @choose_arch_by_name(i8* %144, i32 %145)
  store %struct.mips_arch_choice* %146, %struct.mips_arch_choice** %10, align 8
  %147 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %148 = icmp ne %struct.mips_arch_choice* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %151 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* @mips_hwr_names, align 4
  br label %153

153:                                              ; preds = %149, %143
  br label %196

154:                                              ; preds = %139, %134
  %155 = load i8*, i8** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %155, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %196

159:                                              ; preds = %154
  %160 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %196

163:                                              ; preds = %159
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call %struct.mips_abi_choice* @choose_abi_by_name(i8* %164, i32 %165)
  store %struct.mips_abi_choice* %166, %struct.mips_abi_choice** %9, align 8
  %167 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %168 = icmp ne %struct.mips_abi_choice* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %171 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* @mips_gpr_names, align 4
  %173 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %174 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* @mips_fpr_names, align 4
  br label %176

176:                                              ; preds = %169, %163
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call %struct.mips_arch_choice* @choose_arch_by_name(i8* %177, i32 %178)
  store %struct.mips_arch_choice* %179, %struct.mips_arch_choice** %10, align 8
  %180 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %181 = icmp ne %struct.mips_arch_choice* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %176
  %183 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %184 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* @mips_cp0_names, align 4
  %186 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %187 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* @mips_cp0sel_names, align 4
  %189 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %190 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* @mips_cp0sel_names_len, align 4
  %192 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %193 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* @mips_hwr_names, align 4
  br label %195

195:                                              ; preds = %182, %176
  br label %196

196:                                              ; preds = %14, %19, %24, %46, %51, %57, %87, %107, %133, %153, %195, %159, %154
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.mips_abi_choice* @choose_abi_by_name(i8*, i32) #1

declare dso_local %struct.mips_arch_choice* @choose_arch_by_name(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
