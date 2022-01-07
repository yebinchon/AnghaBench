; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_bc_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_bc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_entry = type { i32, i32, i32, i32, i32*, i32* }
%struct.inet_diag_bc_op = type { i32, i32, i64 }
%struct.inet_diag_hostcond = type { i32, i32, i32, i32 }

@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.inet_diag_entry*)* @inet_diag_bc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_bc_run(i8* %0, i32 %1, %struct.inet_diag_entry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_diag_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_diag_bc_op*, align 8
  %9 = alloca %struct.inet_diag_hostcond*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inet_diag_entry* %2, %struct.inet_diag_entry** %6, align 8
  br label %11

11:                                               ; preds = %199, %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %200

14:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.inet_diag_bc_op*
  store %struct.inet_diag_bc_op* %16, %struct.inet_diag_bc_op** %8, align 8
  %17 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %18 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %171 [
    i32 131, label %20
    i32 132, label %21
    i32 129, label %22
    i32 128, label %32
    i32 134, label %42
    i32 133, label %52
    i32 136, label %62
    i32 130, label %71
    i32 135, label %71
  ]

20:                                               ; preds = %14
  br label %171

21:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %171

22:                                               ; preds = %14
  %23 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %24 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %27 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %26, i64 1
  %28 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %25, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %171

32:                                               ; preds = %14
  %33 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %34 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %37 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %36, i64 1
  %38 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %35, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %171

42:                                               ; preds = %14
  %43 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %44 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %47 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %46, i64 1
  %48 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %45, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %171

52:                                               ; preds = %14
  %53 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %54 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %57 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %56, i64 1
  %58 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %55, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %171

62:                                               ; preds = %14
  %63 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %64 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %171

71:                                               ; preds = %14, %14
  %72 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %73 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %72, i64 1
  %74 = bitcast %struct.inet_diag_bc_op* %73 to %struct.inet_diag_hostcond*
  store %struct.inet_diag_hostcond* %74, %struct.inet_diag_hostcond** %9, align 8
  %75 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %76 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %99

79:                                               ; preds = %71
  %80 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %81 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %84 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %89 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  br label %95

91:                                               ; preds = %79
  %92 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %93 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i32 [ %90, %87 ], [ %94, %91 ]
  %97 = icmp ne i32 %82, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %7, align 4
  br label %171

99:                                               ; preds = %95, %71
  %100 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %101 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %171

105:                                              ; preds = %99
  %106 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %107 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 130
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %112 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %10, align 8
  br label %118

114:                                              ; preds = %105
  %115 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %116 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %10, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %121 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %124 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bitstring_match(i32* %119, i32 %122, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %171

129:                                              ; preds = %118
  %130 = load %struct.inet_diag_entry*, %struct.inet_diag_entry** %6, align 8
  %131 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AF_INET6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %170

135:                                              ; preds = %129
  %136 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %137 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AF_INET, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %135
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %146
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @htonl(i32 65535)
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  %160 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %161 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.inet_diag_hostcond*, %struct.inet_diag_hostcond** %9, align 8
  %164 = getelementptr inbounds %struct.inet_diag_hostcond, %struct.inet_diag_hostcond* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @bitstring_match(i32* %159, i32 %162, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %171

169:                                              ; preds = %157, %151, %146, %141
  br label %170

170:                                              ; preds = %169, %135, %129
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %14, %170, %168, %128, %104, %98, %62, %52, %42, %32, %22, %21, %20
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %176 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = sub nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %5, align 4
  %182 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %183 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr i8, i8* %185, i64 %184
  store i8* %186, i8** %4, align 8
  br label %199

187:                                              ; preds = %171
  %188 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %189 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %5, align 4
  %192 = sub nsw i32 %191, %190
  store i32 %192, i32* %5, align 4
  %193 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %194 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i8*, i8** %4, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr i8, i8* %196, i64 %197
  store i8* %198, i8** %4, align 8
  br label %199

199:                                              ; preds = %187, %174
  br label %11

200:                                              ; preds = %11
  %201 = load i32, i32* %5, align 4
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  ret i32 %203
}

declare dso_local i32 @bitstring_match(i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
