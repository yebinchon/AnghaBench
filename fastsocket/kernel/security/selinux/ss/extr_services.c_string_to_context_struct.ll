; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_string_to_context_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_string_to_context_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sidtab = type { i32 }
%struct.context = type { i32, i32, i32 }
%struct.role_datum = type { i32 }
%struct.type_datum = type { i32, i64 }
%struct.user_datum = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.sidtab*, i8*, i32, %struct.context*, i32)* @string_to_context_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_context_struct(%struct.policydb* %0, %struct.sidtab* %1, i8* %2, i32 %3, %struct.context* %4, i32 %5) #0 {
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.sidtab*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.role_datum*, align 8
  %14 = alloca %struct.type_datum*, align 8
  %15 = alloca %struct.user_datum*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %7, align 8
  store %struct.sidtab* %1, %struct.sidtab** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.context* %4, %struct.context** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.context*, %struct.context** %11, align 8
  %21 = call i32 @context_init(%struct.context* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %19, align 4
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %16, align 8
  %25 = load i8*, i8** %16, align 8
  store i8* %25, i8** %17, align 8
  br label %26

26:                                               ; preds = %38, %6
  %27 = load i8*, i8** %17, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %17, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 58
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %17, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %17, align 8
  br label %26

41:                                               ; preds = %36
  %42 = load i8*, i8** %17, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %179

47:                                               ; preds = %41
  %48 = load i8*, i8** %17, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %17, align 8
  store i8 0, i8* %48, align 1
  %50 = load %struct.policydb*, %struct.policydb** %7, align 8
  %51 = getelementptr inbounds %struct.policydb, %struct.policydb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %16, align 8
  %55 = call i8* @hashtab_search(i32 %53, i8* %54)
  %56 = bitcast i8* %55 to %struct.user_datum*
  store %struct.user_datum* %56, %struct.user_datum** %15, align 8
  %57 = load %struct.user_datum*, %struct.user_datum** %15, align 8
  %58 = icmp ne %struct.user_datum* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %179

60:                                               ; preds = %47
  %61 = load %struct.user_datum*, %struct.user_datum** %15, align 8
  %62 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.context*, %struct.context** %11, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %17, align 8
  store i8* %66, i8** %16, align 8
  br label %67

67:                                               ; preds = %79, %60
  %68 = load i8*, i8** %17, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %17, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %17, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %17, align 8
  br label %67

82:                                               ; preds = %77
  %83 = load i8*, i8** %17, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %179

88:                                               ; preds = %82
  %89 = load i8*, i8** %17, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %17, align 8
  store i8 0, i8* %89, align 1
  %91 = load %struct.policydb*, %struct.policydb** %7, align 8
  %92 = getelementptr inbounds %struct.policydb, %struct.policydb* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %16, align 8
  %96 = call i8* @hashtab_search(i32 %94, i8* %95)
  %97 = bitcast i8* %96 to %struct.role_datum*
  store %struct.role_datum* %97, %struct.role_datum** %13, align 8
  %98 = load %struct.role_datum*, %struct.role_datum** %13, align 8
  %99 = icmp ne %struct.role_datum* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  br label %179

101:                                              ; preds = %88
  %102 = load %struct.role_datum*, %struct.role_datum** %13, align 8
  %103 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.context*, %struct.context** %11, align 8
  %106 = getelementptr inbounds %struct.context, %struct.context* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i8*, i8** %17, align 8
  store i8* %107, i8** %16, align 8
  br label %108

108:                                              ; preds = %120, %101
  %109 = load i8*, i8** %17, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i8*, i8** %17, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 58
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i1 [ false, %108 ], [ %117, %113 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i8*, i8** %17, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %17, align 8
  br label %108

123:                                              ; preds = %118
  %124 = load i8*, i8** %17, align 8
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %18, align 1
  %126 = load i8*, i8** %17, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %17, align 8
  store i8 0, i8* %126, align 1
  %128 = load %struct.policydb*, %struct.policydb** %7, align 8
  %129 = getelementptr inbounds %struct.policydb, %struct.policydb* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %16, align 8
  %133 = call i8* @hashtab_search(i32 %131, i8* %132)
  %134 = bitcast i8* %133 to %struct.type_datum*
  store %struct.type_datum* %134, %struct.type_datum** %14, align 8
  %135 = load %struct.type_datum*, %struct.type_datum** %14, align 8
  %136 = icmp ne %struct.type_datum* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %123
  %138 = load %struct.type_datum*, %struct.type_datum** %14, align 8
  %139 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137, %123
  br label %179

143:                                              ; preds = %137
  %144 = load %struct.type_datum*, %struct.type_datum** %14, align 8
  %145 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.context*, %struct.context** %11, align 8
  %148 = getelementptr inbounds %struct.context, %struct.context* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.policydb*, %struct.policydb** %7, align 8
  %150 = load i8, i8* %18, align 1
  %151 = load %struct.context*, %struct.context** %11, align 8
  %152 = load %struct.sidtab*, %struct.sidtab** %8, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @mls_context_to_sid(%struct.policydb* %149, i8 signext %150, i8** %17, %struct.context* %151, %struct.sidtab* %152, i32 %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %179

158:                                              ; preds = %143
  %159 = load i8*, i8** %17, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %19, align 4
  br label %179

170:                                              ; preds = %158
  %171 = load %struct.policydb*, %struct.policydb** %7, align 8
  %172 = load %struct.context*, %struct.context** %11, align 8
  %173 = call i32 @policydb_context_isvalid(%struct.policydb* %171, %struct.context* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %19, align 4
  br label %179

178:                                              ; preds = %170
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %178, %175, %167, %157, %142, %100, %87, %59, %46
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.context*, %struct.context** %11, align 8
  %184 = call i32 @context_destroy(%struct.context* %183)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i32, i32* %19, align 4
  ret i32 %186
}

declare dso_local i32 @context_init(%struct.context*) #1

declare dso_local i8* @hashtab_search(i32, i8*) #1

declare dso_local i32 @mls_context_to_sid(%struct.policydb*, i8 signext, i8**, %struct.context*, %struct.sidtab*, i32) #1

declare dso_local i32 @policydb_context_isvalid(%struct.policydb*, %struct.context*) #1

declare dso_local i32 @context_destroy(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
